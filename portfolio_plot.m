function portfolio_plot(varargin)
plottitle = varargin{1};
plotlegend = [];

for i = 2:nargin
	plotinfo = varargin{i};
	
	plottype = plotinfo{1};
	plotrsk = plotinfo{2};
	plotret = plotinfo{3};
	if numel(plotinfo) > 3
		plotlabel = plotinfo{4};
	else
		plotlabel = [];
	end
	if numel(plotinfo) > 4
		plotstyle = plotinfo{5};
		if isempty(plotstyle)
			plotstyle = 'b';
		end
	else
		if strcmpi(plottype,'line')
			plotstyle = 'b';
		else
			plotstyle = 'g';
		end
	end
	if numel(plotinfo) > 5
		plotline = plotinfo{6};
		if isempty(plotline)
			plotline = 2;
		end
	else
		if strcmpi(plottype,'line')
			plotline = 2;
		else
			plotline = [];
		end
	end
	
	% line plot
	if strcmpi(plottype,'line')
		for k = 1:size(plotrsk,2)
			plot(sqrt(12)*plotrsk(:,k), 12*plotret(:,k), plotstyle, 'LineWidth', plotline);
			if i == 2 && k == 1
				hold on
			end
			if ~isempty(plotlabel) && ~isempty(plotlabel{k})
				plotlegend = [ plotlegend, {plotlabel{k}} ];
			end
		end
		
	% scatter plot
	else
		if any(plotstyle == '.')
			scatter(sqrt(12)*plotrsk, 12*plotret, plotstyle);
		else
			scatter(sqrt(12)*plotrsk, 12*plotret, plotstyle, 'Filled');
		end			
		if i == 2
			hold on
		end
		if ~isempty(plotlabel)
			for k = 1:numel(plotrsk)
				if ~isempty(plotlabel{k})
					text(sqrt(12)*plotrsk(k) + 0.005, 12*plotret(k), plotlabel{k}, 'FontSize', 8);
				end
			end
		end
	end
end

if ~isempty(plotlegend)
	legend(plotlegend,'Location','SouthEast');
end

title(['\bf' plottitle ]);
xlabel('Standard Deviation of Returns (Annualized)');
ylabel('Mean of Returns (Annualized)');
grid on

hold off

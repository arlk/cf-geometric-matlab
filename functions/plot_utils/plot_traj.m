function [ output_args ] = plot_traj( state,ref )
switch nargin
    case 2
        h1=plot3(state(:,1),state(:,2),state(:,3),'LineWidth',2.0);
        grid on
        hold on
        h3=plot3(ref(:,1),ref(:,2),ref(:,3),'r--','LineWidth',1.0);
        xlabel('X (m)');
        ylabel('Y (m)');
        zlabel('Z (m)');
        legend([h1 h3],[{'$x(t)$'} {'$x_d(t)$'}], 'interpreter', 'latex');
        xlim([-4 4]);
        ylim([-4 4]);
        zlim([0 12]);
        axis square
    case 1
        h1=plot3(state(:,1),state(:,2),state(:,3),'LineWidth',1.3);
        grid on
        xlabel('X (m)');
        ylabel('Y (m)');
        zlabel('Z (m)');
        axis square
    otherwise
end

end


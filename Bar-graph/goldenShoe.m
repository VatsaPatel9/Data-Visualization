close all;
clear all;
clc;

goal_unsorted = [36;31;22;25;21;18;23;29;21;18;25;19;22;20;34;23;18;30;28;18];
factor = [2;2;2;2;2;2;2;1.5;2;2;2;2;2;2;2;2;2;1.5;2;2];
label = {'Ciro Immobile';'Cristiano Ronaldo';'Danny Ings';'Erling Haaland';'Francesco Caputo';'Harry Kane';'Jamie Vardy';'Jean-Pierre Nsame';'Karim Benzema';'Kylian Mbappe';'Lionel Messi';'Mohamed Salah';'Pierre-Emerick Aubameyang';'Raheem Sterling';'Robert Lewandowski';'Romelu Lukaku';'Sadio Mane';'Shon Weissman';'Timo Werner';'Wissam Ben Yedder'};
score_unsorted = goal_unsorted.*factor;
golden_shoe = table(label,goal_unsorted,score_unsorted);
sorted_golden_shoe = sortrows(golden_shoe, 'score_unsorted', 'descend');
final_data = sorted_golden_shoe(1:10,1:3); %extracting only top 10 playes

methods = final_data.('label')';
goal = final_data.('goal_unsorted')';
score = final_data.('score_unsorted')';

data = [goal;score]';
legends = {'Goals','Score'};
chart_title = 'European Golden Shoe 2020- Top Ten';
bar_graph = createBarChart(data, methods, legends, chart_title);

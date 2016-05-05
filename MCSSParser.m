function [a,b] = MCSSParser(sheet)
%
%
if nargin < 1
    sheet = 'stylesheet.css'; % Test
    txt = readStyleSheet(sheet);
elseif nargin == 1 && ~exist(sheet,'file')
    txt = sheet;
else
    txt = readStyleSheet(sheet);
end

[a,b] = parseString(txt);

    function str = readStyleSheet(stysh)
        str = fileread(stysh);
    end

    function [rules, declarations] = parseString(txt)
        rules = regexp(txt,'([^\r\n,{}]+)(,(?=[^}]*{)|\s*{)','match','lineanchors');
%         rules = regexprep(rules,'\#','');
        declarations = '';
    end


%     function props = structProps(sty)
%         props = cell(1,length(sty));
%         for k = 1:length(sty)
%             item = regexp(sty{k},'\n','split');
%             prop = cell(1,length(item));
%             val = cell(1,length(item));
%             for ci = 1:length(item)
%                 aux = regexp(item{ci},'\=','split');
%                 prop{ci} = strtrim(aux{1});
%                 val{ci} = strtrim(aux{2});
%             end
%             props{k} = cell2struct(val,prop,2);
%         end
%     end
end
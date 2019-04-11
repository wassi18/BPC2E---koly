function [A] = generate(elem, m, name)
    A = randi(m, 1, elem);
    o = fopen(name, 'w');
    fwrite(o, A);
    fclose(o);
end
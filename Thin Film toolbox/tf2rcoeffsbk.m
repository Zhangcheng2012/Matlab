function rr = tf2rcoeffs(P,Q)
% r = tf2rcoeffs(P,Q)
% P, Q are row vectors

% check that coefficients are all real
%if any(abs(imag([P Q]))>1e-12), error('filter must have real coefficients'); end

% recursion to get reflection coefficients
N = length(Q); % polynomial is order N-1
r = zeros(1,N);

for m = N:-1:1,
   Pn = P; Qn = Q;

   rf(m) = conj(Qn(m)./Pn(m));
   rb(m) = Pn(1)./Qn(1);
   
   P = (-Pn(2:end) + rf(m)*Qn(2:end))./(1-abs(rf(m))^2);
   Q = (-Qn(1:end-1) + conj(rf(m))*Pn(1:end-1))./(1-abs(rf(m))^2);
   
end

if ~any(abs(rf)>1.0),
   rr = rf;
elseif ~any(abs(rb)>1.0),
   rr = rb;
else
   warning('non-physical reflection coefficients');
   rr = [];
  
end

return


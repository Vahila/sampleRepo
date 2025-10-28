function price = computeDiscount(amount, memberType)
%COMPUTEDISCOUNT Applies discounts based on membership type
%   amount: numeric, original price
%   memberType: string - "gold", "silver", or "none"

    if amount <= 0
        error('Amount must be positive');
    end

    if strcmp(memberType, "gold")
        price = amount * 0.8;   % 20% off
    elseif strcmp(memberType, "silver")
        price = amount * 0.9;   % 10% off
    else
        price = amount;         % no discount
    end
end

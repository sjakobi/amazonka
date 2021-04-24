{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.USD
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.USD where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents an amount of money in United States dollars/
--
--
--
-- /See:/ 'uSD' smart constructor.
data USD = USD'
  { _usdDollars :: !(Maybe Nat),
    _usdCents :: !(Maybe Nat),
    _usdTenthFractionsOfACent :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'USD' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usdDollars' - The whole number of dollars in the amount.
--
-- * 'usdCents' - The fractional portion, in cents, of the amount.
--
-- * 'usdTenthFractionsOfACent' - Fractions of a cent, in tenths.
uSD ::
  USD
uSD =
  USD'
    { _usdDollars = Nothing,
      _usdCents = Nothing,
      _usdTenthFractionsOfACent = Nothing
    }

-- | The whole number of dollars in the amount.
usdDollars :: Lens' USD (Maybe Natural)
usdDollars = lens _usdDollars (\s a -> s {_usdDollars = a}) . mapping _Nat

-- | The fractional portion, in cents, of the amount.
usdCents :: Lens' USD (Maybe Natural)
usdCents = lens _usdCents (\s a -> s {_usdCents = a}) . mapping _Nat

-- | Fractions of a cent, in tenths.
usdTenthFractionsOfACent :: Lens' USD (Maybe Natural)
usdTenthFractionsOfACent = lens _usdTenthFractionsOfACent (\s a -> s {_usdTenthFractionsOfACent = a}) . mapping _Nat

instance FromJSON USD where
  parseJSON =
    withObject
      "USD"
      ( \x ->
          USD'
            <$> (x .:? "Dollars")
            <*> (x .:? "Cents")
            <*> (x .:? "TenthFractionsOfACent")
      )

instance Hashable USD

instance NFData USD

instance ToJSON USD where
  toJSON USD' {..} =
    object
      ( catMaybes
          [ ("Dollars" .=) <$> _usdDollars,
            ("Cents" .=) <$> _usdCents,
            ("TenthFractionsOfACent" .=)
              <$> _usdTenthFractionsOfACent
          ]
      )

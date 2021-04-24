{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Budgets.Types.CostTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.CostTypes where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The types of cost that are included in a @COST@ budget, such as tax and subscriptions.
--
--
-- @USAGE@ , @RI_UTILIZATION@ , @RI_COVERAGE@ , @SAVINGS_PLANS_UTILIZATION@ , and @SAVINGS_PLANS_COVERAGE@ budgets do not have @CostTypes@ .
--
--
-- /See:/ 'costTypes' smart constructor.
data CostTypes = CostTypes'
  { _ctIncludeSubscription ::
      !(Maybe Bool),
    _ctUseAmortized :: !(Maybe Bool),
    _ctIncludeCredit :: !(Maybe Bool),
    _ctUseBlended :: !(Maybe Bool),
    _ctIncludeSupport :: !(Maybe Bool),
    _ctIncludeRefund :: !(Maybe Bool),
    _ctIncludeTax :: !(Maybe Bool),
    _ctIncludeDiscount :: !(Maybe Bool),
    _ctIncludeOtherSubscription :: !(Maybe Bool),
    _ctIncludeUpfront :: !(Maybe Bool),
    _ctIncludeRecurring :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CostTypes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctIncludeSubscription' - Specifies whether a budget includes subscriptions. The default value is @true@ .
--
-- * 'ctUseAmortized' - Specifies whether a budget uses the amortized rate. The default value is @false@ .
--
-- * 'ctIncludeCredit' - Specifies whether a budget includes credits. The default value is @true@ .
--
-- * 'ctUseBlended' - Specifies whether a budget uses a blended rate. The default value is @false@ .
--
-- * 'ctIncludeSupport' - Specifies whether a budget includes support subscription fees. The default value is @true@ .
--
-- * 'ctIncludeRefund' - Specifies whether a budget includes refunds. The default value is @true@ .
--
-- * 'ctIncludeTax' - Specifies whether a budget includes taxes. The default value is @true@ .
--
-- * 'ctIncludeDiscount' - Specifies whether a budget includes discounts. The default value is @true@ .
--
-- * 'ctIncludeOtherSubscription' - Specifies whether a budget includes non-RI subscription costs. The default value is @true@ .
--
-- * 'ctIncludeUpfront' - Specifies whether a budget includes upfront RI costs. The default value is @true@ .
--
-- * 'ctIncludeRecurring' - Specifies whether a budget includes recurring fees such as monthly RI fees. The default value is @true@ .
costTypes ::
  CostTypes
costTypes =
  CostTypes'
    { _ctIncludeSubscription = Nothing,
      _ctUseAmortized = Nothing,
      _ctIncludeCredit = Nothing,
      _ctUseBlended = Nothing,
      _ctIncludeSupport = Nothing,
      _ctIncludeRefund = Nothing,
      _ctIncludeTax = Nothing,
      _ctIncludeDiscount = Nothing,
      _ctIncludeOtherSubscription = Nothing,
      _ctIncludeUpfront = Nothing,
      _ctIncludeRecurring = Nothing
    }

-- | Specifies whether a budget includes subscriptions. The default value is @true@ .
ctIncludeSubscription :: Lens' CostTypes (Maybe Bool)
ctIncludeSubscription = lens _ctIncludeSubscription (\s a -> s {_ctIncludeSubscription = a})

-- | Specifies whether a budget uses the amortized rate. The default value is @false@ .
ctUseAmortized :: Lens' CostTypes (Maybe Bool)
ctUseAmortized = lens _ctUseAmortized (\s a -> s {_ctUseAmortized = a})

-- | Specifies whether a budget includes credits. The default value is @true@ .
ctIncludeCredit :: Lens' CostTypes (Maybe Bool)
ctIncludeCredit = lens _ctIncludeCredit (\s a -> s {_ctIncludeCredit = a})

-- | Specifies whether a budget uses a blended rate. The default value is @false@ .
ctUseBlended :: Lens' CostTypes (Maybe Bool)
ctUseBlended = lens _ctUseBlended (\s a -> s {_ctUseBlended = a})

-- | Specifies whether a budget includes support subscription fees. The default value is @true@ .
ctIncludeSupport :: Lens' CostTypes (Maybe Bool)
ctIncludeSupport = lens _ctIncludeSupport (\s a -> s {_ctIncludeSupport = a})

-- | Specifies whether a budget includes refunds. The default value is @true@ .
ctIncludeRefund :: Lens' CostTypes (Maybe Bool)
ctIncludeRefund = lens _ctIncludeRefund (\s a -> s {_ctIncludeRefund = a})

-- | Specifies whether a budget includes taxes. The default value is @true@ .
ctIncludeTax :: Lens' CostTypes (Maybe Bool)
ctIncludeTax = lens _ctIncludeTax (\s a -> s {_ctIncludeTax = a})

-- | Specifies whether a budget includes discounts. The default value is @true@ .
ctIncludeDiscount :: Lens' CostTypes (Maybe Bool)
ctIncludeDiscount = lens _ctIncludeDiscount (\s a -> s {_ctIncludeDiscount = a})

-- | Specifies whether a budget includes non-RI subscription costs. The default value is @true@ .
ctIncludeOtherSubscription :: Lens' CostTypes (Maybe Bool)
ctIncludeOtherSubscription = lens _ctIncludeOtherSubscription (\s a -> s {_ctIncludeOtherSubscription = a})

-- | Specifies whether a budget includes upfront RI costs. The default value is @true@ .
ctIncludeUpfront :: Lens' CostTypes (Maybe Bool)
ctIncludeUpfront = lens _ctIncludeUpfront (\s a -> s {_ctIncludeUpfront = a})

-- | Specifies whether a budget includes recurring fees such as monthly RI fees. The default value is @true@ .
ctIncludeRecurring :: Lens' CostTypes (Maybe Bool)
ctIncludeRecurring = lens _ctIncludeRecurring (\s a -> s {_ctIncludeRecurring = a})

instance FromJSON CostTypes where
  parseJSON =
    withObject
      "CostTypes"
      ( \x ->
          CostTypes'
            <$> (x .:? "IncludeSubscription")
            <*> (x .:? "UseAmortized")
            <*> (x .:? "IncludeCredit")
            <*> (x .:? "UseBlended")
            <*> (x .:? "IncludeSupport")
            <*> (x .:? "IncludeRefund")
            <*> (x .:? "IncludeTax")
            <*> (x .:? "IncludeDiscount")
            <*> (x .:? "IncludeOtherSubscription")
            <*> (x .:? "IncludeUpfront")
            <*> (x .:? "IncludeRecurring")
      )

instance Hashable CostTypes

instance NFData CostTypes

instance ToJSON CostTypes where
  toJSON CostTypes' {..} =
    object
      ( catMaybes
          [ ("IncludeSubscription" .=)
              <$> _ctIncludeSubscription,
            ("UseAmortized" .=) <$> _ctUseAmortized,
            ("IncludeCredit" .=) <$> _ctIncludeCredit,
            ("UseBlended" .=) <$> _ctUseBlended,
            ("IncludeSupport" .=) <$> _ctIncludeSupport,
            ("IncludeRefund" .=) <$> _ctIncludeRefund,
            ("IncludeTax" .=) <$> _ctIncludeTax,
            ("IncludeDiscount" .=) <$> _ctIncludeDiscount,
            ("IncludeOtherSubscription" .=)
              <$> _ctIncludeOtherSubscription,
            ("IncludeUpfront" .=) <$> _ctIncludeUpfront,
            ("IncludeRecurring" .=) <$> _ctIncludeRecurring
          ]
      )

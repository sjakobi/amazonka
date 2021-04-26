{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MarketplaceAnalytics.Types.DataSetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MarketplaceAnalytics.Types.DataSetType
  ( DataSetType
      ( ..,
        DataSetTypeCustomerProfileByGeography,
        DataSetTypeCustomerProfileByIndustry,
        DataSetTypeCustomerProfileByRevenue,
        DataSetTypeCustomerSubscriberAnnualSubscriptions,
        DataSetTypeCustomerSubscriberHourlyMonthlySubscriptions,
        DataSetTypeDailyBusinessCanceledProductSubscribers,
        DataSetTypeDailyBusinessFees,
        DataSetTypeDailyBusinessFreeTrialConversions,
        DataSetTypeDailyBusinessNewInstances,
        DataSetTypeDailyBusinessNewProductSubscribers,
        DataSetTypeDailyBusinessUsageByInstanceType,
        DataSetTypeDisbursedAmountByAgeOfDisbursedFunds,
        DataSetTypeDisbursedAmountByAgeOfPastDueFunds,
        DataSetTypeDisbursedAmountByAgeOfUncollectedFunds,
        DataSetTypeDisbursedAmountByCustomerGeo,
        DataSetTypeDisbursedAmountByInstanceHours,
        DataSetTypeDisbursedAmountByProduct,
        DataSetTypeDisbursedAmountByProductWithUncollectedFunds,
        DataSetTypeDisbursedAmountByUncollectedFundsBreakdown,
        DataSetTypeMonthlyRevenueAnnualSubscriptions,
        DataSetTypeMonthlyRevenueBillingAndRevenueData,
        DataSetTypeMonthlyRevenueFieldDemonstrationUsage,
        DataSetTypeMonthlyRevenueFlexiblePaymentSchedule,
        DataSetTypeSalesCompensationBilledRevenue,
        DataSetTypeUsSalesAndUseTaxRecords
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DataSetType = DataSetType'
  { fromDataSetType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern DataSetTypeCustomerProfileByGeography :: DataSetType
pattern DataSetTypeCustomerProfileByGeography = DataSetType' "customer_profile_by_geography"

pattern DataSetTypeCustomerProfileByIndustry :: DataSetType
pattern DataSetTypeCustomerProfileByIndustry = DataSetType' "customer_profile_by_industry"

pattern DataSetTypeCustomerProfileByRevenue :: DataSetType
pattern DataSetTypeCustomerProfileByRevenue = DataSetType' "customer_profile_by_revenue"

pattern DataSetTypeCustomerSubscriberAnnualSubscriptions :: DataSetType
pattern DataSetTypeCustomerSubscriberAnnualSubscriptions = DataSetType' "customer_subscriber_annual_subscriptions"

pattern DataSetTypeCustomerSubscriberHourlyMonthlySubscriptions :: DataSetType
pattern DataSetTypeCustomerSubscriberHourlyMonthlySubscriptions = DataSetType' "customer_subscriber_hourly_monthly_subscriptions"

pattern DataSetTypeDailyBusinessCanceledProductSubscribers :: DataSetType
pattern DataSetTypeDailyBusinessCanceledProductSubscribers = DataSetType' "daily_business_canceled_product_subscribers"

pattern DataSetTypeDailyBusinessFees :: DataSetType
pattern DataSetTypeDailyBusinessFees = DataSetType' "daily_business_fees"

pattern DataSetTypeDailyBusinessFreeTrialConversions :: DataSetType
pattern DataSetTypeDailyBusinessFreeTrialConversions = DataSetType' "daily_business_free_trial_conversions"

pattern DataSetTypeDailyBusinessNewInstances :: DataSetType
pattern DataSetTypeDailyBusinessNewInstances = DataSetType' "daily_business_new_instances"

pattern DataSetTypeDailyBusinessNewProductSubscribers :: DataSetType
pattern DataSetTypeDailyBusinessNewProductSubscribers = DataSetType' "daily_business_new_product_subscribers"

pattern DataSetTypeDailyBusinessUsageByInstanceType :: DataSetType
pattern DataSetTypeDailyBusinessUsageByInstanceType = DataSetType' "daily_business_usage_by_instance_type"

pattern DataSetTypeDisbursedAmountByAgeOfDisbursedFunds :: DataSetType
pattern DataSetTypeDisbursedAmountByAgeOfDisbursedFunds = DataSetType' "disbursed_amount_by_age_of_disbursed_funds"

pattern DataSetTypeDisbursedAmountByAgeOfPastDueFunds :: DataSetType
pattern DataSetTypeDisbursedAmountByAgeOfPastDueFunds = DataSetType' "disbursed_amount_by_age_of_past_due_funds"

pattern DataSetTypeDisbursedAmountByAgeOfUncollectedFunds :: DataSetType
pattern DataSetTypeDisbursedAmountByAgeOfUncollectedFunds = DataSetType' "disbursed_amount_by_age_of_uncollected_funds"

pattern DataSetTypeDisbursedAmountByCustomerGeo :: DataSetType
pattern DataSetTypeDisbursedAmountByCustomerGeo = DataSetType' "disbursed_amount_by_customer_geo"

pattern DataSetTypeDisbursedAmountByInstanceHours :: DataSetType
pattern DataSetTypeDisbursedAmountByInstanceHours = DataSetType' "disbursed_amount_by_instance_hours"

pattern DataSetTypeDisbursedAmountByProduct :: DataSetType
pattern DataSetTypeDisbursedAmountByProduct = DataSetType' "disbursed_amount_by_product"

pattern DataSetTypeDisbursedAmountByProductWithUncollectedFunds :: DataSetType
pattern DataSetTypeDisbursedAmountByProductWithUncollectedFunds = DataSetType' "disbursed_amount_by_product_with_uncollected_funds"

pattern DataSetTypeDisbursedAmountByUncollectedFundsBreakdown :: DataSetType
pattern DataSetTypeDisbursedAmountByUncollectedFundsBreakdown = DataSetType' "disbursed_amount_by_uncollected_funds_breakdown"

pattern DataSetTypeMonthlyRevenueAnnualSubscriptions :: DataSetType
pattern DataSetTypeMonthlyRevenueAnnualSubscriptions = DataSetType' "monthly_revenue_annual_subscriptions"

pattern DataSetTypeMonthlyRevenueBillingAndRevenueData :: DataSetType
pattern DataSetTypeMonthlyRevenueBillingAndRevenueData = DataSetType' "monthly_revenue_billing_and_revenue_data"

pattern DataSetTypeMonthlyRevenueFieldDemonstrationUsage :: DataSetType
pattern DataSetTypeMonthlyRevenueFieldDemonstrationUsage = DataSetType' "monthly_revenue_field_demonstration_usage"

pattern DataSetTypeMonthlyRevenueFlexiblePaymentSchedule :: DataSetType
pattern DataSetTypeMonthlyRevenueFlexiblePaymentSchedule = DataSetType' "monthly_revenue_flexible_payment_schedule"

pattern DataSetTypeSalesCompensationBilledRevenue :: DataSetType
pattern DataSetTypeSalesCompensationBilledRevenue = DataSetType' "sales_compensation_billed_revenue"

pattern DataSetTypeUsSalesAndUseTaxRecords :: DataSetType
pattern DataSetTypeUsSalesAndUseTaxRecords = DataSetType' "us_sales_and_use_tax_records"

{-# COMPLETE
  DataSetTypeCustomerProfileByGeography,
  DataSetTypeCustomerProfileByIndustry,
  DataSetTypeCustomerProfileByRevenue,
  DataSetTypeCustomerSubscriberAnnualSubscriptions,
  DataSetTypeCustomerSubscriberHourlyMonthlySubscriptions,
  DataSetTypeDailyBusinessCanceledProductSubscribers,
  DataSetTypeDailyBusinessFees,
  DataSetTypeDailyBusinessFreeTrialConversions,
  DataSetTypeDailyBusinessNewInstances,
  DataSetTypeDailyBusinessNewProductSubscribers,
  DataSetTypeDailyBusinessUsageByInstanceType,
  DataSetTypeDisbursedAmountByAgeOfDisbursedFunds,
  DataSetTypeDisbursedAmountByAgeOfPastDueFunds,
  DataSetTypeDisbursedAmountByAgeOfUncollectedFunds,
  DataSetTypeDisbursedAmountByCustomerGeo,
  DataSetTypeDisbursedAmountByInstanceHours,
  DataSetTypeDisbursedAmountByProduct,
  DataSetTypeDisbursedAmountByProductWithUncollectedFunds,
  DataSetTypeDisbursedAmountByUncollectedFundsBreakdown,
  DataSetTypeMonthlyRevenueAnnualSubscriptions,
  DataSetTypeMonthlyRevenueBillingAndRevenueData,
  DataSetTypeMonthlyRevenueFieldDemonstrationUsage,
  DataSetTypeMonthlyRevenueFlexiblePaymentSchedule,
  DataSetTypeSalesCompensationBilledRevenue,
  DataSetTypeUsSalesAndUseTaxRecords,
  DataSetType'
  #-}

instance Prelude.FromText DataSetType where
  parser = DataSetType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DataSetType where
  toText (DataSetType' x) = x

instance Prelude.Hashable DataSetType

instance Prelude.NFData DataSetType

instance Prelude.ToByteString DataSetType

instance Prelude.ToQuery DataSetType

instance Prelude.ToHeader DataSetType

instance Prelude.ToJSON DataSetType where
  toJSON = Prelude.toJSONText

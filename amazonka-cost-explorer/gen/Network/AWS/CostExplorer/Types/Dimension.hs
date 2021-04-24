{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.Dimension
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.Dimension
  ( Dimension
      ( ..,
        DimensionAZ,
        DimensionAgreementEndDateTimeAfter,
        DimensionAgreementEndDateTimeBefore,
        DimensionBillingEntity,
        DimensionCacheEngine,
        DimensionDatabaseEngine,
        DimensionDeploymentOption,
        DimensionInstanceType,
        DimensionInstanceTypeFamily,
        DimensionLegalEntityName,
        DimensionLinkedAccount,
        DimensionLinkedAccountName,
        DimensionOperatingSystem,
        DimensionOperation,
        DimensionPaymentOption,
        DimensionPlatform,
        DimensionPurchaseType,
        DimensionRecordType,
        DimensionRegion,
        DimensionReservationId,
        DimensionResourceId,
        DimensionRightsizingType,
        DimensionSavingsPlanARN,
        DimensionSavingsPlansType,
        DimensionScope,
        DimensionService,
        DimensionServiceCode,
        DimensionSubscriptionId,
        DimensionTenancy,
        DimensionUsageType,
        DimensionUsageTypeGroup
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Dimension = Dimension' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DimensionAZ :: Dimension
pattern DimensionAZ = Dimension' "AZ"

pattern DimensionAgreementEndDateTimeAfter :: Dimension
pattern DimensionAgreementEndDateTimeAfter = Dimension' "AGREEMENT_END_DATE_TIME_AFTER"

pattern DimensionAgreementEndDateTimeBefore :: Dimension
pattern DimensionAgreementEndDateTimeBefore = Dimension' "AGREEMENT_END_DATE_TIME_BEFORE"

pattern DimensionBillingEntity :: Dimension
pattern DimensionBillingEntity = Dimension' "BILLING_ENTITY"

pattern DimensionCacheEngine :: Dimension
pattern DimensionCacheEngine = Dimension' "CACHE_ENGINE"

pattern DimensionDatabaseEngine :: Dimension
pattern DimensionDatabaseEngine = Dimension' "DATABASE_ENGINE"

pattern DimensionDeploymentOption :: Dimension
pattern DimensionDeploymentOption = Dimension' "DEPLOYMENT_OPTION"

pattern DimensionInstanceType :: Dimension
pattern DimensionInstanceType = Dimension' "INSTANCE_TYPE"

pattern DimensionInstanceTypeFamily :: Dimension
pattern DimensionInstanceTypeFamily = Dimension' "INSTANCE_TYPE_FAMILY"

pattern DimensionLegalEntityName :: Dimension
pattern DimensionLegalEntityName = Dimension' "LEGAL_ENTITY_NAME"

pattern DimensionLinkedAccount :: Dimension
pattern DimensionLinkedAccount = Dimension' "LINKED_ACCOUNT"

pattern DimensionLinkedAccountName :: Dimension
pattern DimensionLinkedAccountName = Dimension' "LINKED_ACCOUNT_NAME"

pattern DimensionOperatingSystem :: Dimension
pattern DimensionOperatingSystem = Dimension' "OPERATING_SYSTEM"

pattern DimensionOperation :: Dimension
pattern DimensionOperation = Dimension' "OPERATION"

pattern DimensionPaymentOption :: Dimension
pattern DimensionPaymentOption = Dimension' "PAYMENT_OPTION"

pattern DimensionPlatform :: Dimension
pattern DimensionPlatform = Dimension' "PLATFORM"

pattern DimensionPurchaseType :: Dimension
pattern DimensionPurchaseType = Dimension' "PURCHASE_TYPE"

pattern DimensionRecordType :: Dimension
pattern DimensionRecordType = Dimension' "RECORD_TYPE"

pattern DimensionRegion :: Dimension
pattern DimensionRegion = Dimension' "REGION"

pattern DimensionReservationId :: Dimension
pattern DimensionReservationId = Dimension' "RESERVATION_ID"

pattern DimensionResourceId :: Dimension
pattern DimensionResourceId = Dimension' "RESOURCE_ID"

pattern DimensionRightsizingType :: Dimension
pattern DimensionRightsizingType = Dimension' "RIGHTSIZING_TYPE"

pattern DimensionSavingsPlanARN :: Dimension
pattern DimensionSavingsPlanARN = Dimension' "SAVINGS_PLAN_ARN"

pattern DimensionSavingsPlansType :: Dimension
pattern DimensionSavingsPlansType = Dimension' "SAVINGS_PLANS_TYPE"

pattern DimensionScope :: Dimension
pattern DimensionScope = Dimension' "SCOPE"

pattern DimensionService :: Dimension
pattern DimensionService = Dimension' "SERVICE"

pattern DimensionServiceCode :: Dimension
pattern DimensionServiceCode = Dimension' "SERVICE_CODE"

pattern DimensionSubscriptionId :: Dimension
pattern DimensionSubscriptionId = Dimension' "SUBSCRIPTION_ID"

pattern DimensionTenancy :: Dimension
pattern DimensionTenancy = Dimension' "TENANCY"

pattern DimensionUsageType :: Dimension
pattern DimensionUsageType = Dimension' "USAGE_TYPE"

pattern DimensionUsageTypeGroup :: Dimension
pattern DimensionUsageTypeGroup = Dimension' "USAGE_TYPE_GROUP"

{-# COMPLETE
  DimensionAZ,
  DimensionAgreementEndDateTimeAfter,
  DimensionAgreementEndDateTimeBefore,
  DimensionBillingEntity,
  DimensionCacheEngine,
  DimensionDatabaseEngine,
  DimensionDeploymentOption,
  DimensionInstanceType,
  DimensionInstanceTypeFamily,
  DimensionLegalEntityName,
  DimensionLinkedAccount,
  DimensionLinkedAccountName,
  DimensionOperatingSystem,
  DimensionOperation,
  DimensionPaymentOption,
  DimensionPlatform,
  DimensionPurchaseType,
  DimensionRecordType,
  DimensionRegion,
  DimensionReservationId,
  DimensionResourceId,
  DimensionRightsizingType,
  DimensionSavingsPlanARN,
  DimensionSavingsPlansType,
  DimensionScope,
  DimensionService,
  DimensionServiceCode,
  DimensionSubscriptionId,
  DimensionTenancy,
  DimensionUsageType,
  DimensionUsageTypeGroup,
  Dimension'
  #-}

instance FromText Dimension where
  parser = (Dimension' . mk) <$> takeText

instance ToText Dimension where
  toText (Dimension' ci) = original ci

instance Hashable Dimension

instance NFData Dimension

instance ToByteString Dimension

instance ToQuery Dimension

instance ToHeader Dimension

instance ToJSON Dimension where
  toJSON = toJSONText

instance FromJSON Dimension where
  parseJSON = parseJSONText "Dimension"

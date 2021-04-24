{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ProvisioningPreferences
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProvisioningPreferences where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The user-defined preferences that will be applied when updating a provisioned product. Not all preferences are applicable to all provisioned product type
--
--
-- One or more AWS accounts that will have access to the provisioned product.
--
-- Applicable only to a @CFN_STACKSET@ provisioned product type.
--
-- The AWS accounts specified should be within the list of accounts in the @STACKSET@ constraint. To get the list of accounts in the @STACKSET@ constraint, use the @DescribeProvisioningParameters@ operation.
--
-- If no values are specified, the default value is all accounts from the @STACKSET@ constraint.
--
--
-- /See:/ 'provisioningPreferences' smart constructor.
data ProvisioningPreferences = ProvisioningPreferences'
  { _ppStackSetFailureToleranceCount ::
      !(Maybe Nat),
    _ppStackSetAccounts ::
      !(Maybe [Text]),
    _ppStackSetFailureTolerancePercentage ::
      !(Maybe Nat),
    _ppStackSetRegions ::
      !(Maybe [Text]),
    _ppStackSetMaxConcurrencyCount ::
      !(Maybe Nat),
    _ppStackSetMaxConcurrencyPercentage ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ProvisioningPreferences' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppStackSetFailureToleranceCount' - The number of accounts, per region, for which this operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions. Applicable only to a @CFN_STACKSET@ provisioned product type. Conditional: You must specify either @StackSetFailureToleranceCount@ or @StackSetFailureTolerancePercentage@ , but not both. The default value is @0@ if no value is specified.
--
-- * 'ppStackSetAccounts' - One or more AWS accounts where the provisioned product will be available. Applicable only to a @CFN_STACKSET@ provisioned product type. The specified accounts should be within the list of accounts from the @STACKSET@ constraint. To get the list of accounts in the @STACKSET@ constraint, use the @DescribeProvisioningParameters@ operation. If no values are specified, the default value is all acounts from the @STACKSET@ constraint.
--
-- * 'ppStackSetFailureTolerancePercentage' - The percentage of accounts, per region, for which this stack operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions. When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number. Applicable only to a @CFN_STACKSET@ provisioned product type. Conditional: You must specify either @StackSetFailureToleranceCount@ or @StackSetFailureTolerancePercentage@ , but not both.
--
-- * 'ppStackSetRegions' - One or more AWS Regions where the provisioned product will be available. Applicable only to a @CFN_STACKSET@ provisioned product type. The specified regions should be within the list of regions from the @STACKSET@ constraint. To get the list of regions in the @STACKSET@ constraint, use the @DescribeProvisioningParameters@ operation. If no values are specified, the default value is all regions from the @STACKSET@ constraint.
--
-- * 'ppStackSetMaxConcurrencyCount' - The maximum number of accounts in which to perform this operation at one time. This is dependent on the value of @StackSetFailureToleranceCount@ . @StackSetMaxConcurrentCount@ is at most one more than the @StackSetFailureToleranceCount@ . Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling. Applicable only to a @CFN_STACKSET@ provisioned product type. Conditional: You must specify either @StackSetMaxConcurrentCount@ or @StackSetMaxConcurrentPercentage@ , but not both.
--
-- * 'ppStackSetMaxConcurrencyPercentage' - The maximum percentage of accounts in which to perform this operation at one time. When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number. This is true except in cases where rounding down would result is zero. In this case, AWS Service Catalog sets the number as @1@ instead. Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling. Applicable only to a @CFN_STACKSET@ provisioned product type. Conditional: You must specify either @StackSetMaxConcurrentCount@ or @StackSetMaxConcurrentPercentage@ , but not both.
provisioningPreferences ::
  ProvisioningPreferences
provisioningPreferences =
  ProvisioningPreferences'
    { _ppStackSetFailureToleranceCount =
        Nothing,
      _ppStackSetAccounts = Nothing,
      _ppStackSetFailureTolerancePercentage = Nothing,
      _ppStackSetRegions = Nothing,
      _ppStackSetMaxConcurrencyCount = Nothing,
      _ppStackSetMaxConcurrencyPercentage = Nothing
    }

-- | The number of accounts, per region, for which this operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions. Applicable only to a @CFN_STACKSET@ provisioned product type. Conditional: You must specify either @StackSetFailureToleranceCount@ or @StackSetFailureTolerancePercentage@ , but not both. The default value is @0@ if no value is specified.
ppStackSetFailureToleranceCount :: Lens' ProvisioningPreferences (Maybe Natural)
ppStackSetFailureToleranceCount = lens _ppStackSetFailureToleranceCount (\s a -> s {_ppStackSetFailureToleranceCount = a}) . mapping _Nat

-- | One or more AWS accounts where the provisioned product will be available. Applicable only to a @CFN_STACKSET@ provisioned product type. The specified accounts should be within the list of accounts from the @STACKSET@ constraint. To get the list of accounts in the @STACKSET@ constraint, use the @DescribeProvisioningParameters@ operation. If no values are specified, the default value is all acounts from the @STACKSET@ constraint.
ppStackSetAccounts :: Lens' ProvisioningPreferences [Text]
ppStackSetAccounts = lens _ppStackSetAccounts (\s a -> s {_ppStackSetAccounts = a}) . _Default . _Coerce

-- | The percentage of accounts, per region, for which this stack operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions. When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number. Applicable only to a @CFN_STACKSET@ provisioned product type. Conditional: You must specify either @StackSetFailureToleranceCount@ or @StackSetFailureTolerancePercentage@ , but not both.
ppStackSetFailureTolerancePercentage :: Lens' ProvisioningPreferences (Maybe Natural)
ppStackSetFailureTolerancePercentage = lens _ppStackSetFailureTolerancePercentage (\s a -> s {_ppStackSetFailureTolerancePercentage = a}) . mapping _Nat

-- | One or more AWS Regions where the provisioned product will be available. Applicable only to a @CFN_STACKSET@ provisioned product type. The specified regions should be within the list of regions from the @STACKSET@ constraint. To get the list of regions in the @STACKSET@ constraint, use the @DescribeProvisioningParameters@ operation. If no values are specified, the default value is all regions from the @STACKSET@ constraint.
ppStackSetRegions :: Lens' ProvisioningPreferences [Text]
ppStackSetRegions = lens _ppStackSetRegions (\s a -> s {_ppStackSetRegions = a}) . _Default . _Coerce

-- | The maximum number of accounts in which to perform this operation at one time. This is dependent on the value of @StackSetFailureToleranceCount@ . @StackSetMaxConcurrentCount@ is at most one more than the @StackSetFailureToleranceCount@ . Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling. Applicable only to a @CFN_STACKSET@ provisioned product type. Conditional: You must specify either @StackSetMaxConcurrentCount@ or @StackSetMaxConcurrentPercentage@ , but not both.
ppStackSetMaxConcurrencyCount :: Lens' ProvisioningPreferences (Maybe Natural)
ppStackSetMaxConcurrencyCount = lens _ppStackSetMaxConcurrencyCount (\s a -> s {_ppStackSetMaxConcurrencyCount = a}) . mapping _Nat

-- | The maximum percentage of accounts in which to perform this operation at one time. When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number. This is true except in cases where rounding down would result is zero. In this case, AWS Service Catalog sets the number as @1@ instead. Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling. Applicable only to a @CFN_STACKSET@ provisioned product type. Conditional: You must specify either @StackSetMaxConcurrentCount@ or @StackSetMaxConcurrentPercentage@ , but not both.
ppStackSetMaxConcurrencyPercentage :: Lens' ProvisioningPreferences (Maybe Natural)
ppStackSetMaxConcurrencyPercentage = lens _ppStackSetMaxConcurrencyPercentage (\s a -> s {_ppStackSetMaxConcurrencyPercentage = a}) . mapping _Nat

instance Hashable ProvisioningPreferences

instance NFData ProvisioningPreferences

instance ToJSON ProvisioningPreferences where
  toJSON ProvisioningPreferences' {..} =
    object
      ( catMaybes
          [ ("StackSetFailureToleranceCount" .=)
              <$> _ppStackSetFailureToleranceCount,
            ("StackSetAccounts" .=) <$> _ppStackSetAccounts,
            ("StackSetFailureTolerancePercentage" .=)
              <$> _ppStackSetFailureTolerancePercentage,
            ("StackSetRegions" .=) <$> _ppStackSetRegions,
            ("StackSetMaxConcurrencyCount" .=)
              <$> _ppStackSetMaxConcurrencyCount,
            ("StackSetMaxConcurrencyPercentage" .=)
              <$> _ppStackSetMaxConcurrencyPercentage
          ]
      )

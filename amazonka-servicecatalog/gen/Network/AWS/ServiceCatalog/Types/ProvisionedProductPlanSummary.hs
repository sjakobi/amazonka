{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanType

-- | Summary information about a plan.
--
--
--
-- /See:/ 'provisionedProductPlanSummary' smart constructor.
data ProvisionedProductPlanSummary = ProvisionedProductPlanSummary'
  { _pppsProvisionProductId ::
      !( Maybe
           Text
       ),
    _pppsProvisioningArtifactId ::
      !( Maybe
           Text
       ),
    _pppsPlanName ::
      !( Maybe
           Text
       ),
    _pppsPlanId ::
      !( Maybe
           Text
       ),
    _pppsPlanType ::
      !( Maybe
           ProvisionedProductPlanType
       ),
    _pppsProvisionProductName ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ProvisionedProductPlanSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pppsProvisionProductId' - The product identifier.
--
-- * 'pppsProvisioningArtifactId' - The identifier of the provisioning artifact.
--
-- * 'pppsPlanName' - The name of the plan.
--
-- * 'pppsPlanId' - The plan identifier.
--
-- * 'pppsPlanType' - The plan type.
--
-- * 'pppsProvisionProductName' - The user-friendly name of the provisioned product.
provisionedProductPlanSummary ::
  ProvisionedProductPlanSummary
provisionedProductPlanSummary =
  ProvisionedProductPlanSummary'
    { _pppsProvisionProductId =
        Nothing,
      _pppsProvisioningArtifactId = Nothing,
      _pppsPlanName = Nothing,
      _pppsPlanId = Nothing,
      _pppsPlanType = Nothing,
      _pppsProvisionProductName = Nothing
    }

-- | The product identifier.
pppsProvisionProductId :: Lens' ProvisionedProductPlanSummary (Maybe Text)
pppsProvisionProductId = lens _pppsProvisionProductId (\s a -> s {_pppsProvisionProductId = a})

-- | The identifier of the provisioning artifact.
pppsProvisioningArtifactId :: Lens' ProvisionedProductPlanSummary (Maybe Text)
pppsProvisioningArtifactId = lens _pppsProvisioningArtifactId (\s a -> s {_pppsProvisioningArtifactId = a})

-- | The name of the plan.
pppsPlanName :: Lens' ProvisionedProductPlanSummary (Maybe Text)
pppsPlanName = lens _pppsPlanName (\s a -> s {_pppsPlanName = a})

-- | The plan identifier.
pppsPlanId :: Lens' ProvisionedProductPlanSummary (Maybe Text)
pppsPlanId = lens _pppsPlanId (\s a -> s {_pppsPlanId = a})

-- | The plan type.
pppsPlanType :: Lens' ProvisionedProductPlanSummary (Maybe ProvisionedProductPlanType)
pppsPlanType = lens _pppsPlanType (\s a -> s {_pppsPlanType = a})

-- | The user-friendly name of the provisioned product.
pppsProvisionProductName :: Lens' ProvisionedProductPlanSummary (Maybe Text)
pppsProvisionProductName = lens _pppsProvisionProductName (\s a -> s {_pppsProvisionProductName = a})

instance FromJSON ProvisionedProductPlanSummary where
  parseJSON =
    withObject
      "ProvisionedProductPlanSummary"
      ( \x ->
          ProvisionedProductPlanSummary'
            <$> (x .:? "ProvisionProductId")
            <*> (x .:? "ProvisioningArtifactId")
            <*> (x .:? "PlanName")
            <*> (x .:? "PlanId")
            <*> (x .:? "PlanType")
            <*> (x .:? "ProvisionProductName")
      )

instance Hashable ProvisionedProductPlanSummary

instance NFData ProvisionedProductPlanSummary

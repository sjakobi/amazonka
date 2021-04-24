{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanDetails where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanStatus
import Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanType
import Network.AWS.ServiceCatalog.Types.Tag
import Network.AWS.ServiceCatalog.Types.UpdateProvisioningParameter

-- | Information about a plan.
--
--
--
-- /See:/ 'provisionedProductPlanDetails' smart constructor.
data ProvisionedProductPlanDetails = ProvisionedProductPlanDetails'
  { _pppdProvisionProductId ::
      !( Maybe
           Text
       ),
    _pppdStatusMessage ::
      !( Maybe
           Text
       ),
    _pppdStatus ::
      !( Maybe
           ProvisionedProductPlanStatus
       ),
    _pppdNotificationARNs ::
      !( Maybe
           [Text]
       ),
    _pppdUpdatedTime ::
      !( Maybe
           POSIX
       ),
    _pppdCreatedTime ::
      !( Maybe
           POSIX
       ),
    _pppdProvisioningArtifactId ::
      !( Maybe
           Text
       ),
    _pppdPlanName ::
      !( Maybe
           Text
       ),
    _pppdTags ::
      !( Maybe
           [Tag]
       ),
    _pppdPlanId ::
      !( Maybe
           Text
       ),
    _pppdProductId ::
      !( Maybe
           Text
       ),
    _pppdProvisioningParameters ::
      !( Maybe
           [UpdateProvisioningParameter]
       ),
    _pppdPlanType ::
      !( Maybe
           ProvisionedProductPlanType
       ),
    _pppdPathId ::
      !( Maybe
           Text
       ),
    _pppdProvisionProductName ::
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

-- | Creates a value of 'ProvisionedProductPlanDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pppdProvisionProductId' - The product identifier.
--
-- * 'pppdStatusMessage' - The status message.
--
-- * 'pppdStatus' - The status.
--
-- * 'pppdNotificationARNs' - Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.
--
-- * 'pppdUpdatedTime' - The time when the plan was last updated.
--
-- * 'pppdCreatedTime' - The UTC time stamp of the creation time.
--
-- * 'pppdProvisioningArtifactId' - The identifier of the provisioning artifact.
--
-- * 'pppdPlanName' - The name of the plan.
--
-- * 'pppdTags' - One or more tags.
--
-- * 'pppdPlanId' - The plan identifier.
--
-- * 'pppdProductId' - The product identifier.
--
-- * 'pppdProvisioningParameters' - Parameters specified by the administrator that are required for provisioning the product.
--
-- * 'pppdPlanType' - The plan type.
--
-- * 'pppdPathId' - The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use 'ListLaunchPaths' .
--
-- * 'pppdProvisionProductName' - The user-friendly name of the provisioned product.
provisionedProductPlanDetails ::
  ProvisionedProductPlanDetails
provisionedProductPlanDetails =
  ProvisionedProductPlanDetails'
    { _pppdProvisionProductId =
        Nothing,
      _pppdStatusMessage = Nothing,
      _pppdStatus = Nothing,
      _pppdNotificationARNs = Nothing,
      _pppdUpdatedTime = Nothing,
      _pppdCreatedTime = Nothing,
      _pppdProvisioningArtifactId = Nothing,
      _pppdPlanName = Nothing,
      _pppdTags = Nothing,
      _pppdPlanId = Nothing,
      _pppdProductId = Nothing,
      _pppdProvisioningParameters = Nothing,
      _pppdPlanType = Nothing,
      _pppdPathId = Nothing,
      _pppdProvisionProductName = Nothing
    }

-- | The product identifier.
pppdProvisionProductId :: Lens' ProvisionedProductPlanDetails (Maybe Text)
pppdProvisionProductId = lens _pppdProvisionProductId (\s a -> s {_pppdProvisionProductId = a})

-- | The status message.
pppdStatusMessage :: Lens' ProvisionedProductPlanDetails (Maybe Text)
pppdStatusMessage = lens _pppdStatusMessage (\s a -> s {_pppdStatusMessage = a})

-- | The status.
pppdStatus :: Lens' ProvisionedProductPlanDetails (Maybe ProvisionedProductPlanStatus)
pppdStatus = lens _pppdStatus (\s a -> s {_pppdStatus = a})

-- | Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.
pppdNotificationARNs :: Lens' ProvisionedProductPlanDetails [Text]
pppdNotificationARNs = lens _pppdNotificationARNs (\s a -> s {_pppdNotificationARNs = a}) . _Default . _Coerce

-- | The time when the plan was last updated.
pppdUpdatedTime :: Lens' ProvisionedProductPlanDetails (Maybe UTCTime)
pppdUpdatedTime = lens _pppdUpdatedTime (\s a -> s {_pppdUpdatedTime = a}) . mapping _Time

-- | The UTC time stamp of the creation time.
pppdCreatedTime :: Lens' ProvisionedProductPlanDetails (Maybe UTCTime)
pppdCreatedTime = lens _pppdCreatedTime (\s a -> s {_pppdCreatedTime = a}) . mapping _Time

-- | The identifier of the provisioning artifact.
pppdProvisioningArtifactId :: Lens' ProvisionedProductPlanDetails (Maybe Text)
pppdProvisioningArtifactId = lens _pppdProvisioningArtifactId (\s a -> s {_pppdProvisioningArtifactId = a})

-- | The name of the plan.
pppdPlanName :: Lens' ProvisionedProductPlanDetails (Maybe Text)
pppdPlanName = lens _pppdPlanName (\s a -> s {_pppdPlanName = a})

-- | One or more tags.
pppdTags :: Lens' ProvisionedProductPlanDetails [Tag]
pppdTags = lens _pppdTags (\s a -> s {_pppdTags = a}) . _Default . _Coerce

-- | The plan identifier.
pppdPlanId :: Lens' ProvisionedProductPlanDetails (Maybe Text)
pppdPlanId = lens _pppdPlanId (\s a -> s {_pppdPlanId = a})

-- | The product identifier.
pppdProductId :: Lens' ProvisionedProductPlanDetails (Maybe Text)
pppdProductId = lens _pppdProductId (\s a -> s {_pppdProductId = a})

-- | Parameters specified by the administrator that are required for provisioning the product.
pppdProvisioningParameters :: Lens' ProvisionedProductPlanDetails [UpdateProvisioningParameter]
pppdProvisioningParameters = lens _pppdProvisioningParameters (\s a -> s {_pppdProvisioningParameters = a}) . _Default . _Coerce

-- | The plan type.
pppdPlanType :: Lens' ProvisionedProductPlanDetails (Maybe ProvisionedProductPlanType)
pppdPlanType = lens _pppdPlanType (\s a -> s {_pppdPlanType = a})

-- | The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use 'ListLaunchPaths' .
pppdPathId :: Lens' ProvisionedProductPlanDetails (Maybe Text)
pppdPathId = lens _pppdPathId (\s a -> s {_pppdPathId = a})

-- | The user-friendly name of the provisioned product.
pppdProvisionProductName :: Lens' ProvisionedProductPlanDetails (Maybe Text)
pppdProvisionProductName = lens _pppdProvisionProductName (\s a -> s {_pppdProvisionProductName = a})

instance FromJSON ProvisionedProductPlanDetails where
  parseJSON =
    withObject
      "ProvisionedProductPlanDetails"
      ( \x ->
          ProvisionedProductPlanDetails'
            <$> (x .:? "ProvisionProductId")
            <*> (x .:? "StatusMessage")
            <*> (x .:? "Status")
            <*> (x .:? "NotificationArns" .!= mempty)
            <*> (x .:? "UpdatedTime")
            <*> (x .:? "CreatedTime")
            <*> (x .:? "ProvisioningArtifactId")
            <*> (x .:? "PlanName")
            <*> (x .:? "Tags" .!= mempty)
            <*> (x .:? "PlanId")
            <*> (x .:? "ProductId")
            <*> (x .:? "ProvisioningParameters" .!= mempty)
            <*> (x .:? "PlanType")
            <*> (x .:? "PathId")
            <*> (x .:? "ProvisionProductName")
      )

instance Hashable ProvisionedProductPlanDetails

instance NFData ProvisionedProductPlanDetails

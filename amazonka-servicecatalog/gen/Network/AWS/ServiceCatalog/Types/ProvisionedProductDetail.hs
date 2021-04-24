{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ProvisionedProductDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProvisionedProductDetail where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.ServiceCatalog.Types.ProvisionedProductStatus

-- | Information about a provisioned product.
--
--
--
-- /See:/ 'provisionedProductDetail' smart constructor.
data ProvisionedProductDetail = ProvisionedProductDetail'
  { _ppdStatusMessage ::
      !(Maybe Text),
    _ppdLastSuccessfulProvisioningRecordId ::
      !(Maybe Text),
    _ppdIdempotencyToken ::
      !(Maybe Text),
    _ppdStatus ::
      !( Maybe
           ProvisionedProductStatus
       ),
    _ppdARN ::
      !(Maybe Text),
    _ppdId ::
      !(Maybe Text),
    _ppdCreatedTime ::
      !(Maybe POSIX),
    _ppdProvisioningArtifactId ::
      !(Maybe Text),
    _ppdName ::
      !(Maybe Text),
    _ppdLaunchRoleARN ::
      !(Maybe Text),
    _ppdProductId ::
      !(Maybe Text),
    _ppdLastProvisioningRecordId ::
      !(Maybe Text),
    _ppdType ::
      !(Maybe Text),
    _ppdLastRecordId ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ProvisionedProductDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppdStatusMessage' - The current status message of the provisioned product.
--
-- * 'ppdLastSuccessfulProvisioningRecordId' - The record identifier of the last successful request performed on this provisioned product of the following types:     * ProvisionedProduct      * UpdateProvisionedProduct      * ExecuteProvisionedProductPlan      * TerminateProvisionedProduct
--
-- * 'ppdIdempotencyToken' - A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
--
-- * 'ppdStatus' - The current status of the provisioned product.     * @AVAILABLE@ - Stable state, ready to perform any operation. The most recent operation succeeded and completed.     * @UNDER_CHANGE@ - Transitive state. Operations performed might not have valid results. Wait for an @AVAILABLE@ status before performing operations.     * @TAINTED@ - Stable state, ready to perform any operation. The stack has completed the requested operation but is not exactly what was requested. For example, a request to update to a new version failed and the stack rolled back to the current version.     * @ERROR@ - An unexpected error occurred. The provisioned product exists but the stack is not running. For example, CloudFormation received a parameter value that was not valid and could not launch the stack.     * @PLAN_IN_PROGRESS@ - Transitive state. The plan operations were performed to provision a new product, but resources have not yet been created. After reviewing the list of resources to be created, execute the plan. Wait for an @AVAILABLE@ status before performing operations.
--
-- * 'ppdARN' - The ARN of the provisioned product.
--
-- * 'ppdId' - The identifier of the provisioned product.
--
-- * 'ppdCreatedTime' - The UTC time stamp of the creation time.
--
-- * 'ppdProvisioningArtifactId' - The identifier of the provisioning artifact. For example, @pa-4abcdjnxjj6ne@ .
--
-- * 'ppdName' - The user-friendly name of the provisioned product.
--
-- * 'ppdLaunchRoleARN' - The ARN of the launch role associated with the provisioned product.
--
-- * 'ppdProductId' - The product identifier. For example, @prod-abcdzk7xy33qa@ .
--
-- * 'ppdLastProvisioningRecordId' - The record identifier of the last request performed on this provisioned product of the following types:     * ProvisionedProduct      * UpdateProvisionedProduct      * ExecuteProvisionedProductPlan      * TerminateProvisionedProduct
--
-- * 'ppdType' - The type of provisioned product. The supported values are @CFN_STACK@ and @CFN_STACKSET@ .
--
-- * 'ppdLastRecordId' - The record identifier of the last request performed on this provisioned product.
provisionedProductDetail ::
  ProvisionedProductDetail
provisionedProductDetail =
  ProvisionedProductDetail'
    { _ppdStatusMessage =
        Nothing,
      _ppdLastSuccessfulProvisioningRecordId = Nothing,
      _ppdIdempotencyToken = Nothing,
      _ppdStatus = Nothing,
      _ppdARN = Nothing,
      _ppdId = Nothing,
      _ppdCreatedTime = Nothing,
      _ppdProvisioningArtifactId = Nothing,
      _ppdName = Nothing,
      _ppdLaunchRoleARN = Nothing,
      _ppdProductId = Nothing,
      _ppdLastProvisioningRecordId = Nothing,
      _ppdType = Nothing,
      _ppdLastRecordId = Nothing
    }

-- | The current status message of the provisioned product.
ppdStatusMessage :: Lens' ProvisionedProductDetail (Maybe Text)
ppdStatusMessage = lens _ppdStatusMessage (\s a -> s {_ppdStatusMessage = a})

-- | The record identifier of the last successful request performed on this provisioned product of the following types:     * ProvisionedProduct      * UpdateProvisionedProduct      * ExecuteProvisionedProductPlan      * TerminateProvisionedProduct
ppdLastSuccessfulProvisioningRecordId :: Lens' ProvisionedProductDetail (Maybe Text)
ppdLastSuccessfulProvisioningRecordId = lens _ppdLastSuccessfulProvisioningRecordId (\s a -> s {_ppdLastSuccessfulProvisioningRecordId = a})

-- | A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
ppdIdempotencyToken :: Lens' ProvisionedProductDetail (Maybe Text)
ppdIdempotencyToken = lens _ppdIdempotencyToken (\s a -> s {_ppdIdempotencyToken = a})

-- | The current status of the provisioned product.     * @AVAILABLE@ - Stable state, ready to perform any operation. The most recent operation succeeded and completed.     * @UNDER_CHANGE@ - Transitive state. Operations performed might not have valid results. Wait for an @AVAILABLE@ status before performing operations.     * @TAINTED@ - Stable state, ready to perform any operation. The stack has completed the requested operation but is not exactly what was requested. For example, a request to update to a new version failed and the stack rolled back to the current version.     * @ERROR@ - An unexpected error occurred. The provisioned product exists but the stack is not running. For example, CloudFormation received a parameter value that was not valid and could not launch the stack.     * @PLAN_IN_PROGRESS@ - Transitive state. The plan operations were performed to provision a new product, but resources have not yet been created. After reviewing the list of resources to be created, execute the plan. Wait for an @AVAILABLE@ status before performing operations.
ppdStatus :: Lens' ProvisionedProductDetail (Maybe ProvisionedProductStatus)
ppdStatus = lens _ppdStatus (\s a -> s {_ppdStatus = a})

-- | The ARN of the provisioned product.
ppdARN :: Lens' ProvisionedProductDetail (Maybe Text)
ppdARN = lens _ppdARN (\s a -> s {_ppdARN = a})

-- | The identifier of the provisioned product.
ppdId :: Lens' ProvisionedProductDetail (Maybe Text)
ppdId = lens _ppdId (\s a -> s {_ppdId = a})

-- | The UTC time stamp of the creation time.
ppdCreatedTime :: Lens' ProvisionedProductDetail (Maybe UTCTime)
ppdCreatedTime = lens _ppdCreatedTime (\s a -> s {_ppdCreatedTime = a}) . mapping _Time

-- | The identifier of the provisioning artifact. For example, @pa-4abcdjnxjj6ne@ .
ppdProvisioningArtifactId :: Lens' ProvisionedProductDetail (Maybe Text)
ppdProvisioningArtifactId = lens _ppdProvisioningArtifactId (\s a -> s {_ppdProvisioningArtifactId = a})

-- | The user-friendly name of the provisioned product.
ppdName :: Lens' ProvisionedProductDetail (Maybe Text)
ppdName = lens _ppdName (\s a -> s {_ppdName = a})

-- | The ARN of the launch role associated with the provisioned product.
ppdLaunchRoleARN :: Lens' ProvisionedProductDetail (Maybe Text)
ppdLaunchRoleARN = lens _ppdLaunchRoleARN (\s a -> s {_ppdLaunchRoleARN = a})

-- | The product identifier. For example, @prod-abcdzk7xy33qa@ .
ppdProductId :: Lens' ProvisionedProductDetail (Maybe Text)
ppdProductId = lens _ppdProductId (\s a -> s {_ppdProductId = a})

-- | The record identifier of the last request performed on this provisioned product of the following types:     * ProvisionedProduct      * UpdateProvisionedProduct      * ExecuteProvisionedProductPlan      * TerminateProvisionedProduct
ppdLastProvisioningRecordId :: Lens' ProvisionedProductDetail (Maybe Text)
ppdLastProvisioningRecordId = lens _ppdLastProvisioningRecordId (\s a -> s {_ppdLastProvisioningRecordId = a})

-- | The type of provisioned product. The supported values are @CFN_STACK@ and @CFN_STACKSET@ .
ppdType :: Lens' ProvisionedProductDetail (Maybe Text)
ppdType = lens _ppdType (\s a -> s {_ppdType = a})

-- | The record identifier of the last request performed on this provisioned product.
ppdLastRecordId :: Lens' ProvisionedProductDetail (Maybe Text)
ppdLastRecordId = lens _ppdLastRecordId (\s a -> s {_ppdLastRecordId = a})

instance FromJSON ProvisionedProductDetail where
  parseJSON =
    withObject
      "ProvisionedProductDetail"
      ( \x ->
          ProvisionedProductDetail'
            <$> (x .:? "StatusMessage")
            <*> (x .:? "LastSuccessfulProvisioningRecordId")
            <*> (x .:? "IdempotencyToken")
            <*> (x .:? "Status")
            <*> (x .:? "Arn")
            <*> (x .:? "Id")
            <*> (x .:? "CreatedTime")
            <*> (x .:? "ProvisioningArtifactId")
            <*> (x .:? "Name")
            <*> (x .:? "LaunchRoleArn")
            <*> (x .:? "ProductId")
            <*> (x .:? "LastProvisioningRecordId")
            <*> (x .:? "Type")
            <*> (x .:? "LastRecordId")
      )

instance Hashable ProvisionedProductDetail

instance NFData ProvisionedProductDetail

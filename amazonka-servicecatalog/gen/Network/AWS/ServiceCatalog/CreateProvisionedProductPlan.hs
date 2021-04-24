{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.CreateProvisionedProductPlan
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a plan. A plan includes the list of resources to be created (when provisioning a new product) or modified (when updating a provisioned product) when the plan is executed.
--
--
-- You can create one plan per provisioned product. To create a plan for an existing provisioned product, the product status must be AVAILBLE or TAINTED.
--
-- To view the resource changes in the change set, use 'DescribeProvisionedProductPlan' . To create or modify the provisioned product, use 'ExecuteProvisionedProductPlan' .
module Network.AWS.ServiceCatalog.CreateProvisionedProductPlan
  ( -- * Creating a Request
    createProvisionedProductPlan,
    CreateProvisionedProductPlan,

    -- * Request Lenses
    cpppNotificationARNs,
    cpppTags,
    cpppProvisioningParameters,
    cpppPathId,
    cpppAcceptLanguage,
    cpppPlanName,
    cpppPlanType,
    cpppProductId,
    cpppProvisionedProductName,
    cpppProvisioningArtifactId,
    cpppIdempotencyToken,

    -- * Destructuring the Response
    createProvisionedProductPlanResponse,
    CreateProvisionedProductPlanResponse,

    -- * Response Lenses
    cppprrsProvisionProductId,
    cppprrsProvisionedProductName,
    cppprrsProvisioningArtifactId,
    cppprrsPlanName,
    cppprrsPlanId,
    cppprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'createProvisionedProductPlan' smart constructor.
data CreateProvisionedProductPlan = CreateProvisionedProductPlan'
  { _cpppNotificationARNs ::
      !( Maybe
           [Text]
       ),
    _cpppTags ::
      !( Maybe
           [Tag]
       ),
    _cpppProvisioningParameters ::
      !( Maybe
           [UpdateProvisioningParameter]
       ),
    _cpppPathId ::
      !(Maybe Text),
    _cpppAcceptLanguage ::
      !(Maybe Text),
    _cpppPlanName ::
      !Text,
    _cpppPlanType ::
      !ProvisionedProductPlanType,
    _cpppProductId ::
      !Text,
    _cpppProvisionedProductName ::
      !Text,
    _cpppProvisioningArtifactId ::
      !Text,
    _cpppIdempotencyToken ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateProvisionedProductPlan' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpppNotificationARNs' - Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.
--
-- * 'cpppTags' - One or more tags. If the plan is for an existing provisioned product, the product must have a @RESOURCE_UPDATE@ constraint with @TagUpdatesOnProvisionedProduct@ set to @ALLOWED@ to allow tag updates.
--
-- * 'cpppProvisioningParameters' - Parameters specified by the administrator that are required for provisioning the product.
--
-- * 'cpppPathId' - The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use 'ListLaunchPaths' .
--
-- * 'cpppAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'cpppPlanName' - The name of the plan.
--
-- * 'cpppPlanType' - The plan type.
--
-- * 'cpppProductId' - The product identifier.
--
-- * 'cpppProvisionedProductName' - A user-friendly name for the provisioned product. This value must be unique for the AWS account and cannot be updated after the product is provisioned.
--
-- * 'cpppProvisioningArtifactId' - The identifier of the provisioning artifact.
--
-- * 'cpppIdempotencyToken' - A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
createProvisionedProductPlan ::
  -- | 'cpppPlanName'
  Text ->
  -- | 'cpppPlanType'
  ProvisionedProductPlanType ->
  -- | 'cpppProductId'
  Text ->
  -- | 'cpppProvisionedProductName'
  Text ->
  -- | 'cpppProvisioningArtifactId'
  Text ->
  -- | 'cpppIdempotencyToken'
  Text ->
  CreateProvisionedProductPlan
createProvisionedProductPlan
  pPlanName_
  pPlanType_
  pProductId_
  pProvisionedProductName_
  pProvisioningArtifactId_
  pIdempotencyToken_ =
    CreateProvisionedProductPlan'
      { _cpppNotificationARNs =
          Nothing,
        _cpppTags = Nothing,
        _cpppProvisioningParameters = Nothing,
        _cpppPathId = Nothing,
        _cpppAcceptLanguage = Nothing,
        _cpppPlanName = pPlanName_,
        _cpppPlanType = pPlanType_,
        _cpppProductId = pProductId_,
        _cpppProvisionedProductName =
          pProvisionedProductName_,
        _cpppProvisioningArtifactId =
          pProvisioningArtifactId_,
        _cpppIdempotencyToken = pIdempotencyToken_
      }

-- | Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.
cpppNotificationARNs :: Lens' CreateProvisionedProductPlan [Text]
cpppNotificationARNs = lens _cpppNotificationARNs (\s a -> s {_cpppNotificationARNs = a}) . _Default . _Coerce

-- | One or more tags. If the plan is for an existing provisioned product, the product must have a @RESOURCE_UPDATE@ constraint with @TagUpdatesOnProvisionedProduct@ set to @ALLOWED@ to allow tag updates.
cpppTags :: Lens' CreateProvisionedProductPlan [Tag]
cpppTags = lens _cpppTags (\s a -> s {_cpppTags = a}) . _Default . _Coerce

-- | Parameters specified by the administrator that are required for provisioning the product.
cpppProvisioningParameters :: Lens' CreateProvisionedProductPlan [UpdateProvisioningParameter]
cpppProvisioningParameters = lens _cpppProvisioningParameters (\s a -> s {_cpppProvisioningParameters = a}) . _Default . _Coerce

-- | The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use 'ListLaunchPaths' .
cpppPathId :: Lens' CreateProvisionedProductPlan (Maybe Text)
cpppPathId = lens _cpppPathId (\s a -> s {_cpppPathId = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
cpppAcceptLanguage :: Lens' CreateProvisionedProductPlan (Maybe Text)
cpppAcceptLanguage = lens _cpppAcceptLanguage (\s a -> s {_cpppAcceptLanguage = a})

-- | The name of the plan.
cpppPlanName :: Lens' CreateProvisionedProductPlan Text
cpppPlanName = lens _cpppPlanName (\s a -> s {_cpppPlanName = a})

-- | The plan type.
cpppPlanType :: Lens' CreateProvisionedProductPlan ProvisionedProductPlanType
cpppPlanType = lens _cpppPlanType (\s a -> s {_cpppPlanType = a})

-- | The product identifier.
cpppProductId :: Lens' CreateProvisionedProductPlan Text
cpppProductId = lens _cpppProductId (\s a -> s {_cpppProductId = a})

-- | A user-friendly name for the provisioned product. This value must be unique for the AWS account and cannot be updated after the product is provisioned.
cpppProvisionedProductName :: Lens' CreateProvisionedProductPlan Text
cpppProvisionedProductName = lens _cpppProvisionedProductName (\s a -> s {_cpppProvisionedProductName = a})

-- | The identifier of the provisioning artifact.
cpppProvisioningArtifactId :: Lens' CreateProvisionedProductPlan Text
cpppProvisioningArtifactId = lens _cpppProvisioningArtifactId (\s a -> s {_cpppProvisioningArtifactId = a})

-- | A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
cpppIdempotencyToken :: Lens' CreateProvisionedProductPlan Text
cpppIdempotencyToken = lens _cpppIdempotencyToken (\s a -> s {_cpppIdempotencyToken = a})

instance AWSRequest CreateProvisionedProductPlan where
  type
    Rs CreateProvisionedProductPlan =
      CreateProvisionedProductPlanResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          CreateProvisionedProductPlanResponse'
            <$> (x .?> "ProvisionProductId")
            <*> (x .?> "ProvisionedProductName")
            <*> (x .?> "ProvisioningArtifactId")
            <*> (x .?> "PlanName")
            <*> (x .?> "PlanId")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateProvisionedProductPlan

instance NFData CreateProvisionedProductPlan

instance ToHeaders CreateProvisionedProductPlan where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.CreateProvisionedProductPlan" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateProvisionedProductPlan where
  toJSON CreateProvisionedProductPlan' {..} =
    object
      ( catMaybes
          [ ("NotificationArns" .=) <$> _cpppNotificationARNs,
            ("Tags" .=) <$> _cpppTags,
            ("ProvisioningParameters" .=)
              <$> _cpppProvisioningParameters,
            ("PathId" .=) <$> _cpppPathId,
            ("AcceptLanguage" .=) <$> _cpppAcceptLanguage,
            Just ("PlanName" .= _cpppPlanName),
            Just ("PlanType" .= _cpppPlanType),
            Just ("ProductId" .= _cpppProductId),
            Just
              ( "ProvisionedProductName"
                  .= _cpppProvisionedProductName
              ),
            Just
              ( "ProvisioningArtifactId"
                  .= _cpppProvisioningArtifactId
              ),
            Just ("IdempotencyToken" .= _cpppIdempotencyToken)
          ]
      )

instance ToPath CreateProvisionedProductPlan where
  toPath = const "/"

instance ToQuery CreateProvisionedProductPlan where
  toQuery = const mempty

-- | /See:/ 'createProvisionedProductPlanResponse' smart constructor.
data CreateProvisionedProductPlanResponse = CreateProvisionedProductPlanResponse'
  { _cppprrsProvisionProductId ::
      !( Maybe
           Text
       ),
    _cppprrsProvisionedProductName ::
      !( Maybe
           Text
       ),
    _cppprrsProvisioningArtifactId ::
      !( Maybe
           Text
       ),
    _cppprrsPlanName ::
      !( Maybe
           Text
       ),
    _cppprrsPlanId ::
      !( Maybe
           Text
       ),
    _cppprrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateProvisionedProductPlanResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cppprrsProvisionProductId' - The product identifier.
--
-- * 'cppprrsProvisionedProductName' - The user-friendly name of the provisioned product.
--
-- * 'cppprrsProvisioningArtifactId' - The identifier of the provisioning artifact.
--
-- * 'cppprrsPlanName' - The name of the plan.
--
-- * 'cppprrsPlanId' - The plan identifier.
--
-- * 'cppprrsResponseStatus' - -- | The response status code.
createProvisionedProductPlanResponse ::
  -- | 'cppprrsResponseStatus'
  Int ->
  CreateProvisionedProductPlanResponse
createProvisionedProductPlanResponse pResponseStatus_ =
  CreateProvisionedProductPlanResponse'
    { _cppprrsProvisionProductId =
        Nothing,
      _cppprrsProvisionedProductName =
        Nothing,
      _cppprrsProvisioningArtifactId =
        Nothing,
      _cppprrsPlanName = Nothing,
      _cppprrsPlanId = Nothing,
      _cppprrsResponseStatus =
        pResponseStatus_
    }

-- | The product identifier.
cppprrsProvisionProductId :: Lens' CreateProvisionedProductPlanResponse (Maybe Text)
cppprrsProvisionProductId = lens _cppprrsProvisionProductId (\s a -> s {_cppprrsProvisionProductId = a})

-- | The user-friendly name of the provisioned product.
cppprrsProvisionedProductName :: Lens' CreateProvisionedProductPlanResponse (Maybe Text)
cppprrsProvisionedProductName = lens _cppprrsProvisionedProductName (\s a -> s {_cppprrsProvisionedProductName = a})

-- | The identifier of the provisioning artifact.
cppprrsProvisioningArtifactId :: Lens' CreateProvisionedProductPlanResponse (Maybe Text)
cppprrsProvisioningArtifactId = lens _cppprrsProvisioningArtifactId (\s a -> s {_cppprrsProvisioningArtifactId = a})

-- | The name of the plan.
cppprrsPlanName :: Lens' CreateProvisionedProductPlanResponse (Maybe Text)
cppprrsPlanName = lens _cppprrsPlanName (\s a -> s {_cppprrsPlanName = a})

-- | The plan identifier.
cppprrsPlanId :: Lens' CreateProvisionedProductPlanResponse (Maybe Text)
cppprrsPlanId = lens _cppprrsPlanId (\s a -> s {_cppprrsPlanId = a})

-- | -- | The response status code.
cppprrsResponseStatus :: Lens' CreateProvisionedProductPlanResponse Int
cppprrsResponseStatus = lens _cppprrsResponseStatus (\s a -> s {_cppprrsResponseStatus = a})

instance NFData CreateProvisionedProductPlanResponse

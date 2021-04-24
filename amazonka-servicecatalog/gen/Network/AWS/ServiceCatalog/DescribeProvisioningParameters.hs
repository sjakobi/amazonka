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
-- Module      : Network.AWS.ServiceCatalog.DescribeProvisioningParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the configuration required to provision the specified product using the specified provisioning artifact.
--
--
-- If the output contains a TagOption key with an empty list of values, there is a TagOption conflict for that key. The end user cannot take action to fix the conflict, and launch is not blocked. In subsequent calls to 'ProvisionProduct' , do not include conflicted TagOption keys as tags, or this causes the error "Parameter validation failed: Missing required parameter in Tags[/N/ ]:/Value/ ". Tag the provisioned product with the value @sc-tagoption-conflict-portfolioId-productId@ .
module Network.AWS.ServiceCatalog.DescribeProvisioningParameters
  ( -- * Creating a Request
    describeProvisioningParameters,
    DescribeProvisioningParameters,

    -- * Request Lenses
    dppProvisioningArtifactName,
    dppProvisioningArtifactId,
    dppProductName,
    dppProductId,
    dppPathId,
    dppAcceptLanguage,
    dppPathName,

    -- * Destructuring the Response
    describeProvisioningParametersResponse,
    DescribeProvisioningParametersResponse,

    -- * Response Lenses
    dpprprsConstraintSummaries,
    dpprprsUsageInstructions,
    dpprprsProvisioningArtifactOutputs,
    dpprprsProvisioningArtifactPreferences,
    dpprprsProvisioningArtifactParameters,
    dpprprsTagOptions,
    dpprprsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'describeProvisioningParameters' smart constructor.
data DescribeProvisioningParameters = DescribeProvisioningParameters'
  { _dppProvisioningArtifactName ::
      !( Maybe
           Text
       ),
    _dppProvisioningArtifactId ::
      !( Maybe
           Text
       ),
    _dppProductName ::
      !( Maybe
           Text
       ),
    _dppProductId ::
      !( Maybe
           Text
       ),
    _dppPathId ::
      !( Maybe
           Text
       ),
    _dppAcceptLanguage ::
      !( Maybe
           Text
       ),
    _dppPathName ::
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

-- | Creates a value of 'DescribeProvisioningParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dppProvisioningArtifactName' - The name of the provisioning artifact. You must provide the name or ID, but not both.
--
-- * 'dppProvisioningArtifactId' - The identifier of the provisioning artifact. You must provide the name or ID, but not both.
--
-- * 'dppProductName' - The name of the product. You must provide the name or ID, but not both.
--
-- * 'dppProductId' - The product identifier. You must provide the product name or ID, but not both.
--
-- * 'dppPathId' - The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use 'ListLaunchPaths' . You must provide the name or ID, but not both.
--
-- * 'dppAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'dppPathName' - The name of the path. You must provide the name or ID, but not both.
describeProvisioningParameters ::
  DescribeProvisioningParameters
describeProvisioningParameters =
  DescribeProvisioningParameters'
    { _dppProvisioningArtifactName =
        Nothing,
      _dppProvisioningArtifactId = Nothing,
      _dppProductName = Nothing,
      _dppProductId = Nothing,
      _dppPathId = Nothing,
      _dppAcceptLanguage = Nothing,
      _dppPathName = Nothing
    }

-- | The name of the provisioning artifact. You must provide the name or ID, but not both.
dppProvisioningArtifactName :: Lens' DescribeProvisioningParameters (Maybe Text)
dppProvisioningArtifactName = lens _dppProvisioningArtifactName (\s a -> s {_dppProvisioningArtifactName = a})

-- | The identifier of the provisioning artifact. You must provide the name or ID, but not both.
dppProvisioningArtifactId :: Lens' DescribeProvisioningParameters (Maybe Text)
dppProvisioningArtifactId = lens _dppProvisioningArtifactId (\s a -> s {_dppProvisioningArtifactId = a})

-- | The name of the product. You must provide the name or ID, but not both.
dppProductName :: Lens' DescribeProvisioningParameters (Maybe Text)
dppProductName = lens _dppProductName (\s a -> s {_dppProductName = a})

-- | The product identifier. You must provide the product name or ID, but not both.
dppProductId :: Lens' DescribeProvisioningParameters (Maybe Text)
dppProductId = lens _dppProductId (\s a -> s {_dppProductId = a})

-- | The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use 'ListLaunchPaths' . You must provide the name or ID, but not both.
dppPathId :: Lens' DescribeProvisioningParameters (Maybe Text)
dppPathId = lens _dppPathId (\s a -> s {_dppPathId = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
dppAcceptLanguage :: Lens' DescribeProvisioningParameters (Maybe Text)
dppAcceptLanguage = lens _dppAcceptLanguage (\s a -> s {_dppAcceptLanguage = a})

-- | The name of the path. You must provide the name or ID, but not both.
dppPathName :: Lens' DescribeProvisioningParameters (Maybe Text)
dppPathName = lens _dppPathName (\s a -> s {_dppPathName = a})

instance AWSRequest DescribeProvisioningParameters where
  type
    Rs DescribeProvisioningParameters =
      DescribeProvisioningParametersResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          DescribeProvisioningParametersResponse'
            <$> (x .?> "ConstraintSummaries" .!@ mempty)
            <*> (x .?> "UsageInstructions" .!@ mempty)
            <*> (x .?> "ProvisioningArtifactOutputs" .!@ mempty)
            <*> (x .?> "ProvisioningArtifactPreferences")
            <*> (x .?> "ProvisioningArtifactParameters" .!@ mempty)
            <*> (x .?> "TagOptions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeProvisioningParameters

instance NFData DescribeProvisioningParameters

instance ToHeaders DescribeProvisioningParameters where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.DescribeProvisioningParameters" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeProvisioningParameters where
  toJSON DescribeProvisioningParameters' {..} =
    object
      ( catMaybes
          [ ("ProvisioningArtifactName" .=)
              <$> _dppProvisioningArtifactName,
            ("ProvisioningArtifactId" .=)
              <$> _dppProvisioningArtifactId,
            ("ProductName" .=) <$> _dppProductName,
            ("ProductId" .=) <$> _dppProductId,
            ("PathId" .=) <$> _dppPathId,
            ("AcceptLanguage" .=) <$> _dppAcceptLanguage,
            ("PathName" .=) <$> _dppPathName
          ]
      )

instance ToPath DescribeProvisioningParameters where
  toPath = const "/"

instance ToQuery DescribeProvisioningParameters where
  toQuery = const mempty

-- | /See:/ 'describeProvisioningParametersResponse' smart constructor.
data DescribeProvisioningParametersResponse = DescribeProvisioningParametersResponse'
  { _dpprprsConstraintSummaries ::
      !( Maybe
           [ConstraintSummary]
       ),
    _dpprprsUsageInstructions ::
      !( Maybe
           [UsageInstruction]
       ),
    _dpprprsProvisioningArtifactOutputs ::
      !( Maybe
           [ProvisioningArtifactOutput]
       ),
    _dpprprsProvisioningArtifactPreferences ::
      !( Maybe
           ProvisioningArtifactPreferences
       ),
    _dpprprsProvisioningArtifactParameters ::
      !( Maybe
           [ProvisioningArtifactParameter]
       ),
    _dpprprsTagOptions ::
      !( Maybe
           [TagOptionSummary]
       ),
    _dpprprsResponseStatus ::
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

-- | Creates a value of 'DescribeProvisioningParametersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpprprsConstraintSummaries' - Information about the constraints used to provision the product.
--
-- * 'dpprprsUsageInstructions' - Any additional metadata specifically related to the provisioning of the product. For example, see the @Version@ field of the CloudFormation template.
--
-- * 'dpprprsProvisioningArtifactOutputs' - The output of the provisioning artifact.
--
-- * 'dpprprsProvisioningArtifactPreferences' - An object that contains information about preferences, such as regions and accounts, for the provisioning artifact.
--
-- * 'dpprprsProvisioningArtifactParameters' - Information about the parameters used to provision the product.
--
-- * 'dpprprsTagOptions' - Information about the TagOptions associated with the resource.
--
-- * 'dpprprsResponseStatus' - -- | The response status code.
describeProvisioningParametersResponse ::
  -- | 'dpprprsResponseStatus'
  Int ->
  DescribeProvisioningParametersResponse
describeProvisioningParametersResponse
  pResponseStatus_ =
    DescribeProvisioningParametersResponse'
      { _dpprprsConstraintSummaries =
          Nothing,
        _dpprprsUsageInstructions = Nothing,
        _dpprprsProvisioningArtifactOutputs =
          Nothing,
        _dpprprsProvisioningArtifactPreferences =
          Nothing,
        _dpprprsProvisioningArtifactParameters =
          Nothing,
        _dpprprsTagOptions = Nothing,
        _dpprprsResponseStatus =
          pResponseStatus_
      }

-- | Information about the constraints used to provision the product.
dpprprsConstraintSummaries :: Lens' DescribeProvisioningParametersResponse [ConstraintSummary]
dpprprsConstraintSummaries = lens _dpprprsConstraintSummaries (\s a -> s {_dpprprsConstraintSummaries = a}) . _Default . _Coerce

-- | Any additional metadata specifically related to the provisioning of the product. For example, see the @Version@ field of the CloudFormation template.
dpprprsUsageInstructions :: Lens' DescribeProvisioningParametersResponse [UsageInstruction]
dpprprsUsageInstructions = lens _dpprprsUsageInstructions (\s a -> s {_dpprprsUsageInstructions = a}) . _Default . _Coerce

-- | The output of the provisioning artifact.
dpprprsProvisioningArtifactOutputs :: Lens' DescribeProvisioningParametersResponse [ProvisioningArtifactOutput]
dpprprsProvisioningArtifactOutputs = lens _dpprprsProvisioningArtifactOutputs (\s a -> s {_dpprprsProvisioningArtifactOutputs = a}) . _Default . _Coerce

-- | An object that contains information about preferences, such as regions and accounts, for the provisioning artifact.
dpprprsProvisioningArtifactPreferences :: Lens' DescribeProvisioningParametersResponse (Maybe ProvisioningArtifactPreferences)
dpprprsProvisioningArtifactPreferences = lens _dpprprsProvisioningArtifactPreferences (\s a -> s {_dpprprsProvisioningArtifactPreferences = a})

-- | Information about the parameters used to provision the product.
dpprprsProvisioningArtifactParameters :: Lens' DescribeProvisioningParametersResponse [ProvisioningArtifactParameter]
dpprprsProvisioningArtifactParameters = lens _dpprprsProvisioningArtifactParameters (\s a -> s {_dpprprsProvisioningArtifactParameters = a}) . _Default . _Coerce

-- | Information about the TagOptions associated with the resource.
dpprprsTagOptions :: Lens' DescribeProvisioningParametersResponse [TagOptionSummary]
dpprprsTagOptions = lens _dpprprsTagOptions (\s a -> s {_dpprprsTagOptions = a}) . _Default . _Coerce

-- | -- | The response status code.
dpprprsResponseStatus :: Lens' DescribeProvisioningParametersResponse Int
dpprprsResponseStatus = lens _dpprprsResponseStatus (\s a -> s {_dpprprsResponseStatus = a})

instance
  NFData
    DescribeProvisioningParametersResponse

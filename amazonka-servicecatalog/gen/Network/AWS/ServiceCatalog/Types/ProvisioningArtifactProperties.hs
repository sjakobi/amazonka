{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ProvisioningArtifactProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProvisioningArtifactProperties where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.ServiceCatalog.Types.ProvisioningArtifactType

-- | Information about a provisioning artifact (also known as a version) for a product.
--
--
--
-- /See:/ 'provisioningArtifactProperties' smart constructor.
data ProvisioningArtifactProperties = ProvisioningArtifactProperties'
  { _papDisableTemplateValidation ::
      !( Maybe
           Bool
       ),
    _papName ::
      !( Maybe
           Text
       ),
    _papDescription ::
      !( Maybe
           Text
       ),
    _papType ::
      !( Maybe
           ProvisioningArtifactType
       ),
    _papInfo ::
      !( Map
           Text
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

-- | Creates a value of 'ProvisioningArtifactProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'papDisableTemplateValidation' - If set to true, AWS Service Catalog stops validating the specified provisioning artifact even if it is invalid.
--
-- * 'papName' - The name of the provisioning artifact (for example, v1 v2beta). No spaces are allowed.
--
-- * 'papDescription' - The description of the provisioning artifact, including how it differs from the previous provisioning artifact.
--
-- * 'papType' - The type of provisioning artifact.     * @CLOUD_FORMATION_TEMPLATE@ - AWS CloudFormation template     * @MARKETPLACE_AMI@ - AWS Marketplace AMI     * @MARKETPLACE_CAR@ - AWS Marketplace Clusters and AWS Resources
--
-- * 'papInfo' - Specify the template source with one of the following options, but not both. Keys accepted: [ @LoadTemplateFromURL@ , @ImportFromPhysicalId@ ] The URL of the CloudFormation template in Amazon S3. Specify the URL in JSON format as follows: @"LoadTemplateFromURL": "https://s3.amazonaws.com/cf-templates-ozkq9d3hgiq2-us-east-1/..."@  @ImportFromPhysicalId@ : The physical id of the resource that contains the template. Currently only supports CloudFormation stack arn. Specify the physical id in JSON format as follows: @ImportFromPhysicalId: “arn:aws:cloudformation:[us-east-1]:[accountId]:stack/[StackName]/[resourceId]@
provisioningArtifactProperties ::
  ProvisioningArtifactProperties
provisioningArtifactProperties =
  ProvisioningArtifactProperties'
    { _papDisableTemplateValidation =
        Nothing,
      _papName = Nothing,
      _papDescription = Nothing,
      _papType = Nothing,
      _papInfo = mempty
    }

-- | If set to true, AWS Service Catalog stops validating the specified provisioning artifact even if it is invalid.
papDisableTemplateValidation :: Lens' ProvisioningArtifactProperties (Maybe Bool)
papDisableTemplateValidation = lens _papDisableTemplateValidation (\s a -> s {_papDisableTemplateValidation = a})

-- | The name of the provisioning artifact (for example, v1 v2beta). No spaces are allowed.
papName :: Lens' ProvisioningArtifactProperties (Maybe Text)
papName = lens _papName (\s a -> s {_papName = a})

-- | The description of the provisioning artifact, including how it differs from the previous provisioning artifact.
papDescription :: Lens' ProvisioningArtifactProperties (Maybe Text)
papDescription = lens _papDescription (\s a -> s {_papDescription = a})

-- | The type of provisioning artifact.     * @CLOUD_FORMATION_TEMPLATE@ - AWS CloudFormation template     * @MARKETPLACE_AMI@ - AWS Marketplace AMI     * @MARKETPLACE_CAR@ - AWS Marketplace Clusters and AWS Resources
papType :: Lens' ProvisioningArtifactProperties (Maybe ProvisioningArtifactType)
papType = lens _papType (\s a -> s {_papType = a})

-- | Specify the template source with one of the following options, but not both. Keys accepted: [ @LoadTemplateFromURL@ , @ImportFromPhysicalId@ ] The URL of the CloudFormation template in Amazon S3. Specify the URL in JSON format as follows: @"LoadTemplateFromURL": "https://s3.amazonaws.com/cf-templates-ozkq9d3hgiq2-us-east-1/..."@  @ImportFromPhysicalId@ : The physical id of the resource that contains the template. Currently only supports CloudFormation stack arn. Specify the physical id in JSON format as follows: @ImportFromPhysicalId: “arn:aws:cloudformation:[us-east-1]:[accountId]:stack/[StackName]/[resourceId]@
papInfo :: Lens' ProvisioningArtifactProperties (HashMap Text Text)
papInfo = lens _papInfo (\s a -> s {_papInfo = a}) . _Map

instance Hashable ProvisioningArtifactProperties

instance NFData ProvisioningArtifactProperties

instance ToJSON ProvisioningArtifactProperties where
  toJSON ProvisioningArtifactProperties' {..} =
    object
      ( catMaybes
          [ ("DisableTemplateValidation" .=)
              <$> _papDisableTemplateValidation,
            ("Name" .=) <$> _papName,
            ("Description" .=) <$> _papDescription,
            ("Type" .=) <$> _papType,
            Just ("Info" .= _papInfo)
          ]
      )

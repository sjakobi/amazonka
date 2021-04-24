{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.StackResourceDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackResourceDetail where

import Network.AWS.CloudFormation.Types.ModuleInfo
import Network.AWS.CloudFormation.Types.ResourceStatus
import Network.AWS.CloudFormation.Types.StackResourceDriftInformation
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains detailed information about the specified stack resource.
--
--
--
-- /See:/ 'stackResourceDetail' smart constructor.
data StackResourceDetail = StackResourceDetail'
  { _staDriftInformation ::
      !( Maybe
           StackResourceDriftInformation
       ),
    _staStackName :: !(Maybe Text),
    _staStackId :: !(Maybe Text),
    _staMetadata :: !(Maybe Text),
    _staPhysicalResourceId ::
      !(Maybe Text),
    _staResourceStatusReason ::
      !(Maybe Text),
    _staModuleInfo ::
      !(Maybe ModuleInfo),
    _staDescription ::
      !(Maybe Text),
    _staLogicalResourceId :: !Text,
    _staResourceType :: !Text,
    _staLastUpdatedTimestamp ::
      !ISO8601,
    _staResourceStatus ::
      !ResourceStatus
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StackResourceDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'staDriftInformation' - Information about whether the resource's actual configuration differs, or has /drifted/ , from its expected configuration, as defined in the stack template and any values specified as template parameters. For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html Detecting Unregulated Configuration Changes to Stacks and Resources> .
--
-- * 'staStackName' - The name associated with the stack.
--
-- * 'staStackId' - Unique identifier of the stack.
--
-- * 'staMetadata' - The content of the @Metadata@ attribute declared for the resource. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-metadata.html Metadata Attribute> in the AWS CloudFormation User Guide.
--
-- * 'staPhysicalResourceId' - The name or unique identifier that corresponds to a physical instance ID of a resource supported by AWS CloudFormation.
--
-- * 'staResourceStatusReason' - Success/failure message associated with the resource.
--
-- * 'staModuleInfo' - Contains information about the module from which the resource was created, if the resource was created from a module included in the stack template.
--
-- * 'staDescription' - User defined description associated with the resource.
--
-- * 'staLogicalResourceId' - The logical name of the resource specified in the template.
--
-- * 'staResourceType' - Type of resource. ((For more information, go to <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html AWS Resource Types Reference> in the AWS CloudFormation User Guide.)
--
-- * 'staLastUpdatedTimestamp' - Time the status was updated.
--
-- * 'staResourceStatus' - Current status of the resource.
stackResourceDetail ::
  -- | 'staLogicalResourceId'
  Text ->
  -- | 'staResourceType'
  Text ->
  -- | 'staLastUpdatedTimestamp'
  UTCTime ->
  -- | 'staResourceStatus'
  ResourceStatus ->
  StackResourceDetail
stackResourceDetail
  pLogicalResourceId_
  pResourceType_
  pLastUpdatedTimestamp_
  pResourceStatus_ =
    StackResourceDetail'
      { _staDriftInformation =
          Nothing,
        _staStackName = Nothing,
        _staStackId = Nothing,
        _staMetadata = Nothing,
        _staPhysicalResourceId = Nothing,
        _staResourceStatusReason = Nothing,
        _staModuleInfo = Nothing,
        _staDescription = Nothing,
        _staLogicalResourceId = pLogicalResourceId_,
        _staResourceType = pResourceType_,
        _staLastUpdatedTimestamp =
          _Time # pLastUpdatedTimestamp_,
        _staResourceStatus = pResourceStatus_
      }

-- | Information about whether the resource's actual configuration differs, or has /drifted/ , from its expected configuration, as defined in the stack template and any values specified as template parameters. For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html Detecting Unregulated Configuration Changes to Stacks and Resources> .
staDriftInformation :: Lens' StackResourceDetail (Maybe StackResourceDriftInformation)
staDriftInformation = lens _staDriftInformation (\s a -> s {_staDriftInformation = a})

-- | The name associated with the stack.
staStackName :: Lens' StackResourceDetail (Maybe Text)
staStackName = lens _staStackName (\s a -> s {_staStackName = a})

-- | Unique identifier of the stack.
staStackId :: Lens' StackResourceDetail (Maybe Text)
staStackId = lens _staStackId (\s a -> s {_staStackId = a})

-- | The content of the @Metadata@ attribute declared for the resource. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-metadata.html Metadata Attribute> in the AWS CloudFormation User Guide.
staMetadata :: Lens' StackResourceDetail (Maybe Text)
staMetadata = lens _staMetadata (\s a -> s {_staMetadata = a})

-- | The name or unique identifier that corresponds to a physical instance ID of a resource supported by AWS CloudFormation.
staPhysicalResourceId :: Lens' StackResourceDetail (Maybe Text)
staPhysicalResourceId = lens _staPhysicalResourceId (\s a -> s {_staPhysicalResourceId = a})

-- | Success/failure message associated with the resource.
staResourceStatusReason :: Lens' StackResourceDetail (Maybe Text)
staResourceStatusReason = lens _staResourceStatusReason (\s a -> s {_staResourceStatusReason = a})

-- | Contains information about the module from which the resource was created, if the resource was created from a module included in the stack template.
staModuleInfo :: Lens' StackResourceDetail (Maybe ModuleInfo)
staModuleInfo = lens _staModuleInfo (\s a -> s {_staModuleInfo = a})

-- | User defined description associated with the resource.
staDescription :: Lens' StackResourceDetail (Maybe Text)
staDescription = lens _staDescription (\s a -> s {_staDescription = a})

-- | The logical name of the resource specified in the template.
staLogicalResourceId :: Lens' StackResourceDetail Text
staLogicalResourceId = lens _staLogicalResourceId (\s a -> s {_staLogicalResourceId = a})

-- | Type of resource. ((For more information, go to <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html AWS Resource Types Reference> in the AWS CloudFormation User Guide.)
staResourceType :: Lens' StackResourceDetail Text
staResourceType = lens _staResourceType (\s a -> s {_staResourceType = a})

-- | Time the status was updated.
staLastUpdatedTimestamp :: Lens' StackResourceDetail UTCTime
staLastUpdatedTimestamp = lens _staLastUpdatedTimestamp (\s a -> s {_staLastUpdatedTimestamp = a}) . _Time

-- | Current status of the resource.
staResourceStatus :: Lens' StackResourceDetail ResourceStatus
staResourceStatus = lens _staResourceStatus (\s a -> s {_staResourceStatus = a})

instance FromXML StackResourceDetail where
  parseXML x =
    StackResourceDetail'
      <$> (x .@? "DriftInformation")
      <*> (x .@? "StackName")
      <*> (x .@? "StackId")
      <*> (x .@? "Metadata")
      <*> (x .@? "PhysicalResourceId")
      <*> (x .@? "ResourceStatusReason")
      <*> (x .@? "ModuleInfo")
      <*> (x .@? "Description")
      <*> (x .@ "LogicalResourceId")
      <*> (x .@ "ResourceType")
      <*> (x .@ "LastUpdatedTimestamp")
      <*> (x .@ "ResourceStatus")

instance Hashable StackResourceDetail

instance NFData StackResourceDetail

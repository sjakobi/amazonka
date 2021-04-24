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
-- Module      : Network.AWS.EC2.ModifyImageAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the specified attribute of the specified AMI. You can specify only one attribute at a time. You can use the @Attribute@ parameter to specify the attribute or one of the following parameters: @Description@ , @LaunchPermission@ , or @ProductCode@ .
--
--
-- AWS Marketplace product codes cannot be modified. Images with an AWS Marketplace product code cannot be made public.
--
-- To enable the SriovNetSupport enhanced networking attribute of an image, enable SriovNetSupport on an instance and create an AMI from the instance.
module Network.AWS.EC2.ModifyImageAttribute
  ( -- * Creating a Request
    modifyImageAttribute,
    ModifyImageAttribute,

    -- * Request Lenses
    miaDryRun,
    miaProductCodes,
    miaUserIds,
    miaAttribute,
    miaLaunchPermission,
    miaDescription,
    miaValue,
    miaUserGroups,
    miaOperationType,
    miaImageId,

    -- * Destructuring the Response
    modifyImageAttributeResponse,
    ModifyImageAttributeResponse,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for ModifyImageAttribute.
--
--
--
-- /See:/ 'modifyImageAttribute' smart constructor.
data ModifyImageAttribute = ModifyImageAttribute'
  { _miaDryRun ::
      !(Maybe Bool),
    _miaProductCodes ::
      !(Maybe [Text]),
    _miaUserIds ::
      !(Maybe [Text]),
    _miaAttribute ::
      !(Maybe Text),
    _miaLaunchPermission ::
      !( Maybe
           LaunchPermissionModifications
       ),
    _miaDescription ::
      !(Maybe AttributeValue),
    _miaValue :: !(Maybe Text),
    _miaUserGroups ::
      !(Maybe [Text]),
    _miaOperationType ::
      !(Maybe OperationType),
    _miaImageId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ModifyImageAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'miaProductCodes' - The DevPay product codes. After you add a product code to an AMI, it can't be removed.
--
-- * 'miaUserIds' - The AWS account IDs. This parameter can be used only when the @Attribute@ parameter is @launchPermission@ .
--
-- * 'miaAttribute' - The name of the attribute to modify. The valid values are @description@ , @launchPermission@ , and @productCodes@ .
--
-- * 'miaLaunchPermission' - A new launch permission for the AMI.
--
-- * 'miaDescription' - A new description for the AMI.
--
-- * 'miaValue' - The value of the attribute being modified. This parameter can be used only when the @Attribute@ parameter is @description@ or @productCodes@ .
--
-- * 'miaUserGroups' - The user groups. This parameter can be used only when the @Attribute@ parameter is @launchPermission@ .
--
-- * 'miaOperationType' - The operation type. This parameter can be used only when the @Attribute@ parameter is @launchPermission@ .
--
-- * 'miaImageId' - The ID of the AMI.
modifyImageAttribute ::
  -- | 'miaImageId'
  Text ->
  ModifyImageAttribute
modifyImageAttribute pImageId_ =
  ModifyImageAttribute'
    { _miaDryRun = Nothing,
      _miaProductCodes = Nothing,
      _miaUserIds = Nothing,
      _miaAttribute = Nothing,
      _miaLaunchPermission = Nothing,
      _miaDescription = Nothing,
      _miaValue = Nothing,
      _miaUserGroups = Nothing,
      _miaOperationType = Nothing,
      _miaImageId = pImageId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
miaDryRun :: Lens' ModifyImageAttribute (Maybe Bool)
miaDryRun = lens _miaDryRun (\s a -> s {_miaDryRun = a})

-- | The DevPay product codes. After you add a product code to an AMI, it can't be removed.
miaProductCodes :: Lens' ModifyImageAttribute [Text]
miaProductCodes = lens _miaProductCodes (\s a -> s {_miaProductCodes = a}) . _Default . _Coerce

-- | The AWS account IDs. This parameter can be used only when the @Attribute@ parameter is @launchPermission@ .
miaUserIds :: Lens' ModifyImageAttribute [Text]
miaUserIds = lens _miaUserIds (\s a -> s {_miaUserIds = a}) . _Default . _Coerce

-- | The name of the attribute to modify. The valid values are @description@ , @launchPermission@ , and @productCodes@ .
miaAttribute :: Lens' ModifyImageAttribute (Maybe Text)
miaAttribute = lens _miaAttribute (\s a -> s {_miaAttribute = a})

-- | A new launch permission for the AMI.
miaLaunchPermission :: Lens' ModifyImageAttribute (Maybe LaunchPermissionModifications)
miaLaunchPermission = lens _miaLaunchPermission (\s a -> s {_miaLaunchPermission = a})

-- | A new description for the AMI.
miaDescription :: Lens' ModifyImageAttribute (Maybe AttributeValue)
miaDescription = lens _miaDescription (\s a -> s {_miaDescription = a})

-- | The value of the attribute being modified. This parameter can be used only when the @Attribute@ parameter is @description@ or @productCodes@ .
miaValue :: Lens' ModifyImageAttribute (Maybe Text)
miaValue = lens _miaValue (\s a -> s {_miaValue = a})

-- | The user groups. This parameter can be used only when the @Attribute@ parameter is @launchPermission@ .
miaUserGroups :: Lens' ModifyImageAttribute [Text]
miaUserGroups = lens _miaUserGroups (\s a -> s {_miaUserGroups = a}) . _Default . _Coerce

-- | The operation type. This parameter can be used only when the @Attribute@ parameter is @launchPermission@ .
miaOperationType :: Lens' ModifyImageAttribute (Maybe OperationType)
miaOperationType = lens _miaOperationType (\s a -> s {_miaOperationType = a})

-- | The ID of the AMI.
miaImageId :: Lens' ModifyImageAttribute Text
miaImageId = lens _miaImageId (\s a -> s {_miaImageId = a})

instance AWSRequest ModifyImageAttribute where
  type
    Rs ModifyImageAttribute =
      ModifyImageAttributeResponse
  request = postQuery ec2
  response = receiveNull ModifyImageAttributeResponse'

instance Hashable ModifyImageAttribute

instance NFData ModifyImageAttribute

instance ToHeaders ModifyImageAttribute where
  toHeaders = const mempty

instance ToPath ModifyImageAttribute where
  toPath = const "/"

instance ToQuery ModifyImageAttribute where
  toQuery ModifyImageAttribute' {..} =
    mconcat
      [ "Action" =: ("ModifyImageAttribute" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _miaDryRun,
        toQuery
          (toQueryList "ProductCode" <$> _miaProductCodes),
        toQuery (toQueryList "UserId" <$> _miaUserIds),
        "Attribute" =: _miaAttribute,
        "LaunchPermission" =: _miaLaunchPermission,
        "Description" =: _miaDescription,
        "Value" =: _miaValue,
        toQuery (toQueryList "UserGroup" <$> _miaUserGroups),
        "OperationType" =: _miaOperationType,
        "ImageId" =: _miaImageId
      ]

-- | /See:/ 'modifyImageAttributeResponse' smart constructor.
data ModifyImageAttributeResponse = ModifyImageAttributeResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ModifyImageAttributeResponse' with the minimum fields required to make a request.
modifyImageAttributeResponse ::
  ModifyImageAttributeResponse
modifyImageAttributeResponse =
  ModifyImageAttributeResponse'

instance NFData ModifyImageAttributeResponse

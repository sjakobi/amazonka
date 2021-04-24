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
-- Module      : Network.AWS.EC2.ModifyFpgaImageAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the specified attribute of the specified Amazon FPGA Image (AFI).
module Network.AWS.EC2.ModifyFpgaImageAttribute
  ( -- * Creating a Request
    modifyFpgaImageAttribute,
    ModifyFpgaImageAttribute,

    -- * Request Lenses
    mfiaDryRun,
    mfiaProductCodes,
    mfiaUserIds,
    mfiaName,
    mfiaAttribute,
    mfiaDescription,
    mfiaUserGroups,
    mfiaLoadPermission,
    mfiaOperationType,
    mfiaFpgaImageId,

    -- * Destructuring the Response
    modifyFpgaImageAttributeResponse,
    ModifyFpgaImageAttributeResponse,

    -- * Response Lenses
    mfiarrsFpgaImageAttribute,
    mfiarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyFpgaImageAttribute' smart constructor.
data ModifyFpgaImageAttribute = ModifyFpgaImageAttribute'
  { _mfiaDryRun ::
      !(Maybe Bool),
    _mfiaProductCodes ::
      !(Maybe [Text]),
    _mfiaUserIds ::
      !(Maybe [Text]),
    _mfiaName ::
      !(Maybe Text),
    _mfiaAttribute ::
      !( Maybe
           FpgaImageAttributeName
       ),
    _mfiaDescription ::
      !(Maybe Text),
    _mfiaUserGroups ::
      !(Maybe [Text]),
    _mfiaLoadPermission ::
      !( Maybe
           LoadPermissionModifications
       ),
    _mfiaOperationType ::
      !( Maybe
           OperationType
       ),
    _mfiaFpgaImageId ::
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

-- | Creates a value of 'ModifyFpgaImageAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfiaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'mfiaProductCodes' - The product codes. After you add a product code to an AFI, it can't be removed. This parameter is valid only when modifying the @productCodes@ attribute.
--
-- * 'mfiaUserIds' - The AWS account IDs. This parameter is valid only when modifying the @loadPermission@ attribute.
--
-- * 'mfiaName' - A name for the AFI.
--
-- * 'mfiaAttribute' - The name of the attribute.
--
-- * 'mfiaDescription' - A description for the AFI.
--
-- * 'mfiaUserGroups' - The user groups. This parameter is valid only when modifying the @loadPermission@ attribute.
--
-- * 'mfiaLoadPermission' - The load permission for the AFI.
--
-- * 'mfiaOperationType' - The operation type.
--
-- * 'mfiaFpgaImageId' - The ID of the AFI.
modifyFpgaImageAttribute ::
  -- | 'mfiaFpgaImageId'
  Text ->
  ModifyFpgaImageAttribute
modifyFpgaImageAttribute pFpgaImageId_ =
  ModifyFpgaImageAttribute'
    { _mfiaDryRun = Nothing,
      _mfiaProductCodes = Nothing,
      _mfiaUserIds = Nothing,
      _mfiaName = Nothing,
      _mfiaAttribute = Nothing,
      _mfiaDescription = Nothing,
      _mfiaUserGroups = Nothing,
      _mfiaLoadPermission = Nothing,
      _mfiaOperationType = Nothing,
      _mfiaFpgaImageId = pFpgaImageId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
mfiaDryRun :: Lens' ModifyFpgaImageAttribute (Maybe Bool)
mfiaDryRun = lens _mfiaDryRun (\s a -> s {_mfiaDryRun = a})

-- | The product codes. After you add a product code to an AFI, it can't be removed. This parameter is valid only when modifying the @productCodes@ attribute.
mfiaProductCodes :: Lens' ModifyFpgaImageAttribute [Text]
mfiaProductCodes = lens _mfiaProductCodes (\s a -> s {_mfiaProductCodes = a}) . _Default . _Coerce

-- | The AWS account IDs. This parameter is valid only when modifying the @loadPermission@ attribute.
mfiaUserIds :: Lens' ModifyFpgaImageAttribute [Text]
mfiaUserIds = lens _mfiaUserIds (\s a -> s {_mfiaUserIds = a}) . _Default . _Coerce

-- | A name for the AFI.
mfiaName :: Lens' ModifyFpgaImageAttribute (Maybe Text)
mfiaName = lens _mfiaName (\s a -> s {_mfiaName = a})

-- | The name of the attribute.
mfiaAttribute :: Lens' ModifyFpgaImageAttribute (Maybe FpgaImageAttributeName)
mfiaAttribute = lens _mfiaAttribute (\s a -> s {_mfiaAttribute = a})

-- | A description for the AFI.
mfiaDescription :: Lens' ModifyFpgaImageAttribute (Maybe Text)
mfiaDescription = lens _mfiaDescription (\s a -> s {_mfiaDescription = a})

-- | The user groups. This parameter is valid only when modifying the @loadPermission@ attribute.
mfiaUserGroups :: Lens' ModifyFpgaImageAttribute [Text]
mfiaUserGroups = lens _mfiaUserGroups (\s a -> s {_mfiaUserGroups = a}) . _Default . _Coerce

-- | The load permission for the AFI.
mfiaLoadPermission :: Lens' ModifyFpgaImageAttribute (Maybe LoadPermissionModifications)
mfiaLoadPermission = lens _mfiaLoadPermission (\s a -> s {_mfiaLoadPermission = a})

-- | The operation type.
mfiaOperationType :: Lens' ModifyFpgaImageAttribute (Maybe OperationType)
mfiaOperationType = lens _mfiaOperationType (\s a -> s {_mfiaOperationType = a})

-- | The ID of the AFI.
mfiaFpgaImageId :: Lens' ModifyFpgaImageAttribute Text
mfiaFpgaImageId = lens _mfiaFpgaImageId (\s a -> s {_mfiaFpgaImageId = a})

instance AWSRequest ModifyFpgaImageAttribute where
  type
    Rs ModifyFpgaImageAttribute =
      ModifyFpgaImageAttributeResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ModifyFpgaImageAttributeResponse'
            <$> (x .@? "fpgaImageAttribute") <*> (pure (fromEnum s))
      )

instance Hashable ModifyFpgaImageAttribute

instance NFData ModifyFpgaImageAttribute

instance ToHeaders ModifyFpgaImageAttribute where
  toHeaders = const mempty

instance ToPath ModifyFpgaImageAttribute where
  toPath = const "/"

instance ToQuery ModifyFpgaImageAttribute where
  toQuery ModifyFpgaImageAttribute' {..} =
    mconcat
      [ "Action"
          =: ("ModifyFpgaImageAttribute" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _mfiaDryRun,
        toQuery
          (toQueryList "ProductCode" <$> _mfiaProductCodes),
        toQuery (toQueryList "UserId" <$> _mfiaUserIds),
        "Name" =: _mfiaName,
        "Attribute" =: _mfiaAttribute,
        "Description" =: _mfiaDescription,
        toQuery
          (toQueryList "UserGroup" <$> _mfiaUserGroups),
        "LoadPermission" =: _mfiaLoadPermission,
        "OperationType" =: _mfiaOperationType,
        "FpgaImageId" =: _mfiaFpgaImageId
      ]

-- | /See:/ 'modifyFpgaImageAttributeResponse' smart constructor.
data ModifyFpgaImageAttributeResponse = ModifyFpgaImageAttributeResponse'
  { _mfiarrsFpgaImageAttribute ::
      !( Maybe
           FpgaImageAttribute
       ),
    _mfiarrsResponseStatus ::
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

-- | Creates a value of 'ModifyFpgaImageAttributeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfiarrsFpgaImageAttribute' - Information about the attribute.
--
-- * 'mfiarrsResponseStatus' - -- | The response status code.
modifyFpgaImageAttributeResponse ::
  -- | 'mfiarrsResponseStatus'
  Int ->
  ModifyFpgaImageAttributeResponse
modifyFpgaImageAttributeResponse pResponseStatus_ =
  ModifyFpgaImageAttributeResponse'
    { _mfiarrsFpgaImageAttribute =
        Nothing,
      _mfiarrsResponseStatus = pResponseStatus_
    }

-- | Information about the attribute.
mfiarrsFpgaImageAttribute :: Lens' ModifyFpgaImageAttributeResponse (Maybe FpgaImageAttribute)
mfiarrsFpgaImageAttribute = lens _mfiarrsFpgaImageAttribute (\s a -> s {_mfiarrsFpgaImageAttribute = a})

-- | -- | The response status code.
mfiarrsResponseStatus :: Lens' ModifyFpgaImageAttributeResponse Int
mfiarrsResponseStatus = lens _mfiarrsResponseStatus (\s a -> s {_mfiarrsResponseStatus = a})

instance NFData ModifyFpgaImageAttributeResponse

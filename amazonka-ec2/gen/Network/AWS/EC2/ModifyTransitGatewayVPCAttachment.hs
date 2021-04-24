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
-- Module      : Network.AWS.EC2.ModifyTransitGatewayVPCAttachment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the specified VPC attachment.
module Network.AWS.EC2.ModifyTransitGatewayVPCAttachment
  ( -- * Creating a Request
    modifyTransitGatewayVPCAttachment,
    ModifyTransitGatewayVPCAttachment,

    -- * Request Lenses
    mtgvaDryRun,
    mtgvaRemoveSubnetIds,
    mtgvaOptions,
    mtgvaAddSubnetIds,
    mtgvaTransitGatewayAttachmentId,

    -- * Destructuring the Response
    modifyTransitGatewayVPCAttachmentResponse,
    ModifyTransitGatewayVPCAttachmentResponse,

    -- * Response Lenses
    mtgvarrsTransitGatewayVPCAttachment,
    mtgvarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyTransitGatewayVPCAttachment' smart constructor.
data ModifyTransitGatewayVPCAttachment = ModifyTransitGatewayVPCAttachment'
  { _mtgvaDryRun ::
      !( Maybe
           Bool
       ),
    _mtgvaRemoveSubnetIds ::
      !( Maybe
           [Text]
       ),
    _mtgvaOptions ::
      !( Maybe
           ModifyTransitGatewayVPCAttachmentRequestOptions
       ),
    _mtgvaAddSubnetIds ::
      !( Maybe
           [Text]
       ),
    _mtgvaTransitGatewayAttachmentId ::
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

-- | Creates a value of 'ModifyTransitGatewayVPCAttachment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtgvaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'mtgvaRemoveSubnetIds' - The IDs of one or more subnets to remove.
--
-- * 'mtgvaOptions' - The new VPC attachment options.
--
-- * 'mtgvaAddSubnetIds' - The IDs of one or more subnets to add. You can specify at most one subnet per Availability Zone.
--
-- * 'mtgvaTransitGatewayAttachmentId' - The ID of the attachment.
modifyTransitGatewayVPCAttachment ::
  -- | 'mtgvaTransitGatewayAttachmentId'
  Text ->
  ModifyTransitGatewayVPCAttachment
modifyTransitGatewayVPCAttachment
  pTransitGatewayAttachmentId_ =
    ModifyTransitGatewayVPCAttachment'
      { _mtgvaDryRun =
          Nothing,
        _mtgvaRemoveSubnetIds = Nothing,
        _mtgvaOptions = Nothing,
        _mtgvaAddSubnetIds = Nothing,
        _mtgvaTransitGatewayAttachmentId =
          pTransitGatewayAttachmentId_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
mtgvaDryRun :: Lens' ModifyTransitGatewayVPCAttachment (Maybe Bool)
mtgvaDryRun = lens _mtgvaDryRun (\s a -> s {_mtgvaDryRun = a})

-- | The IDs of one or more subnets to remove.
mtgvaRemoveSubnetIds :: Lens' ModifyTransitGatewayVPCAttachment [Text]
mtgvaRemoveSubnetIds = lens _mtgvaRemoveSubnetIds (\s a -> s {_mtgvaRemoveSubnetIds = a}) . _Default . _Coerce

-- | The new VPC attachment options.
mtgvaOptions :: Lens' ModifyTransitGatewayVPCAttachment (Maybe ModifyTransitGatewayVPCAttachmentRequestOptions)
mtgvaOptions = lens _mtgvaOptions (\s a -> s {_mtgvaOptions = a})

-- | The IDs of one or more subnets to add. You can specify at most one subnet per Availability Zone.
mtgvaAddSubnetIds :: Lens' ModifyTransitGatewayVPCAttachment [Text]
mtgvaAddSubnetIds = lens _mtgvaAddSubnetIds (\s a -> s {_mtgvaAddSubnetIds = a}) . _Default . _Coerce

-- | The ID of the attachment.
mtgvaTransitGatewayAttachmentId :: Lens' ModifyTransitGatewayVPCAttachment Text
mtgvaTransitGatewayAttachmentId = lens _mtgvaTransitGatewayAttachmentId (\s a -> s {_mtgvaTransitGatewayAttachmentId = a})

instance AWSRequest ModifyTransitGatewayVPCAttachment where
  type
    Rs ModifyTransitGatewayVPCAttachment =
      ModifyTransitGatewayVPCAttachmentResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ModifyTransitGatewayVPCAttachmentResponse'
            <$> (x .@? "transitGatewayVpcAttachment")
            <*> (pure (fromEnum s))
      )

instance Hashable ModifyTransitGatewayVPCAttachment

instance NFData ModifyTransitGatewayVPCAttachment

instance ToHeaders ModifyTransitGatewayVPCAttachment where
  toHeaders = const mempty

instance ToPath ModifyTransitGatewayVPCAttachment where
  toPath = const "/"

instance ToQuery ModifyTransitGatewayVPCAttachment where
  toQuery ModifyTransitGatewayVPCAttachment' {..} =
    mconcat
      [ "Action"
          =: ("ModifyTransitGatewayVpcAttachment" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _mtgvaDryRun,
        toQuery
          ( toQueryList "RemoveSubnetIds"
              <$> _mtgvaRemoveSubnetIds
          ),
        "Options" =: _mtgvaOptions,
        toQuery
          (toQueryList "AddSubnetIds" <$> _mtgvaAddSubnetIds),
        "TransitGatewayAttachmentId"
          =: _mtgvaTransitGatewayAttachmentId
      ]

-- | /See:/ 'modifyTransitGatewayVPCAttachmentResponse' smart constructor.
data ModifyTransitGatewayVPCAttachmentResponse = ModifyTransitGatewayVPCAttachmentResponse'
  { _mtgvarrsTransitGatewayVPCAttachment ::
      !( Maybe
           TransitGatewayVPCAttachment
       ),
    _mtgvarrsResponseStatus ::
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

-- | Creates a value of 'ModifyTransitGatewayVPCAttachmentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtgvarrsTransitGatewayVPCAttachment' - Information about the modified attachment.
--
-- * 'mtgvarrsResponseStatus' - -- | The response status code.
modifyTransitGatewayVPCAttachmentResponse ::
  -- | 'mtgvarrsResponseStatus'
  Int ->
  ModifyTransitGatewayVPCAttachmentResponse
modifyTransitGatewayVPCAttachmentResponse
  pResponseStatus_ =
    ModifyTransitGatewayVPCAttachmentResponse'
      { _mtgvarrsTransitGatewayVPCAttachment =
          Nothing,
        _mtgvarrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the modified attachment.
mtgvarrsTransitGatewayVPCAttachment :: Lens' ModifyTransitGatewayVPCAttachmentResponse (Maybe TransitGatewayVPCAttachment)
mtgvarrsTransitGatewayVPCAttachment = lens _mtgvarrsTransitGatewayVPCAttachment (\s a -> s {_mtgvarrsTransitGatewayVPCAttachment = a})

-- | -- | The response status code.
mtgvarrsResponseStatus :: Lens' ModifyTransitGatewayVPCAttachmentResponse Int
mtgvarrsResponseStatus = lens _mtgvarrsResponseStatus (\s a -> s {_mtgvarrsResponseStatus = a})

instance
  NFData
    ModifyTransitGatewayVPCAttachmentResponse

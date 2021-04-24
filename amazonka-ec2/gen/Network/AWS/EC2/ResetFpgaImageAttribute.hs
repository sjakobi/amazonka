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
-- Module      : Network.AWS.EC2.ResetFpgaImageAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets the specified attribute of the specified Amazon FPGA Image (AFI) to its default value. You can only reset the load permission attribute.
module Network.AWS.EC2.ResetFpgaImageAttribute
  ( -- * Creating a Request
    resetFpgaImageAttribute,
    ResetFpgaImageAttribute,

    -- * Request Lenses
    rfiaDryRun,
    rfiaAttribute,
    rfiaFpgaImageId,

    -- * Destructuring the Response
    resetFpgaImageAttributeResponse,
    ResetFpgaImageAttributeResponse,

    -- * Response Lenses
    rfiarrsReturn,
    rfiarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'resetFpgaImageAttribute' smart constructor.
data ResetFpgaImageAttribute = ResetFpgaImageAttribute'
  { _rfiaDryRun ::
      !(Maybe Bool),
    _rfiaAttribute ::
      !( Maybe
           ResetFpgaImageAttributeName
       ),
    _rfiaFpgaImageId ::
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

-- | Creates a value of 'ResetFpgaImageAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfiaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'rfiaAttribute' - The attribute.
--
-- * 'rfiaFpgaImageId' - The ID of the AFI.
resetFpgaImageAttribute ::
  -- | 'rfiaFpgaImageId'
  Text ->
  ResetFpgaImageAttribute
resetFpgaImageAttribute pFpgaImageId_ =
  ResetFpgaImageAttribute'
    { _rfiaDryRun = Nothing,
      _rfiaAttribute = Nothing,
      _rfiaFpgaImageId = pFpgaImageId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
rfiaDryRun :: Lens' ResetFpgaImageAttribute (Maybe Bool)
rfiaDryRun = lens _rfiaDryRun (\s a -> s {_rfiaDryRun = a})

-- | The attribute.
rfiaAttribute :: Lens' ResetFpgaImageAttribute (Maybe ResetFpgaImageAttributeName)
rfiaAttribute = lens _rfiaAttribute (\s a -> s {_rfiaAttribute = a})

-- | The ID of the AFI.
rfiaFpgaImageId :: Lens' ResetFpgaImageAttribute Text
rfiaFpgaImageId = lens _rfiaFpgaImageId (\s a -> s {_rfiaFpgaImageId = a})

instance AWSRequest ResetFpgaImageAttribute where
  type
    Rs ResetFpgaImageAttribute =
      ResetFpgaImageAttributeResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ResetFpgaImageAttributeResponse'
            <$> (x .@? "return") <*> (pure (fromEnum s))
      )

instance Hashable ResetFpgaImageAttribute

instance NFData ResetFpgaImageAttribute

instance ToHeaders ResetFpgaImageAttribute where
  toHeaders = const mempty

instance ToPath ResetFpgaImageAttribute where
  toPath = const "/"

instance ToQuery ResetFpgaImageAttribute where
  toQuery ResetFpgaImageAttribute' {..} =
    mconcat
      [ "Action"
          =: ("ResetFpgaImageAttribute" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _rfiaDryRun,
        "Attribute" =: _rfiaAttribute,
        "FpgaImageId" =: _rfiaFpgaImageId
      ]

-- | /See:/ 'resetFpgaImageAttributeResponse' smart constructor.
data ResetFpgaImageAttributeResponse = ResetFpgaImageAttributeResponse'
  { _rfiarrsReturn ::
      !( Maybe
           Bool
       ),
    _rfiarrsResponseStatus ::
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

-- | Creates a value of 'ResetFpgaImageAttributeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfiarrsReturn' - Is @true@ if the request succeeds, and an error otherwise.
--
-- * 'rfiarrsResponseStatus' - -- | The response status code.
resetFpgaImageAttributeResponse ::
  -- | 'rfiarrsResponseStatus'
  Int ->
  ResetFpgaImageAttributeResponse
resetFpgaImageAttributeResponse pResponseStatus_ =
  ResetFpgaImageAttributeResponse'
    { _rfiarrsReturn =
        Nothing,
      _rfiarrsResponseStatus = pResponseStatus_
    }

-- | Is @true@ if the request succeeds, and an error otherwise.
rfiarrsReturn :: Lens' ResetFpgaImageAttributeResponse (Maybe Bool)
rfiarrsReturn = lens _rfiarrsReturn (\s a -> s {_rfiarrsReturn = a})

-- | -- | The response status code.
rfiarrsResponseStatus :: Lens' ResetFpgaImageAttributeResponse Int
rfiarrsResponseStatus = lens _rfiarrsResponseStatus (\s a -> s {_rfiarrsResponseStatus = a})

instance NFData ResetFpgaImageAttributeResponse

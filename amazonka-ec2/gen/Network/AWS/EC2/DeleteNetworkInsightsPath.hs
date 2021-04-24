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
-- Module      : Network.AWS.EC2.DeleteNetworkInsightsPath
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified path.
module Network.AWS.EC2.DeleteNetworkInsightsPath
  ( -- * Creating a Request
    deleteNetworkInsightsPath,
    DeleteNetworkInsightsPath,

    -- * Request Lenses
    dnipDryRun,
    dnipNetworkInsightsPathId,

    -- * Destructuring the Response
    deleteNetworkInsightsPathResponse,
    DeleteNetworkInsightsPathResponse,

    -- * Response Lenses
    dniprrsNetworkInsightsPathId,
    dniprrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteNetworkInsightsPath' smart constructor.
data DeleteNetworkInsightsPath = DeleteNetworkInsightsPath'
  { _dnipDryRun ::
      !(Maybe Bool),
    _dnipNetworkInsightsPathId ::
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

-- | Creates a value of 'DeleteNetworkInsightsPath' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dnipDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dnipNetworkInsightsPathId' - The ID of the path.
deleteNetworkInsightsPath ::
  -- | 'dnipNetworkInsightsPathId'
  Text ->
  DeleteNetworkInsightsPath
deleteNetworkInsightsPath pNetworkInsightsPathId_ =
  DeleteNetworkInsightsPath'
    { _dnipDryRun = Nothing,
      _dnipNetworkInsightsPathId =
        pNetworkInsightsPathId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dnipDryRun :: Lens' DeleteNetworkInsightsPath (Maybe Bool)
dnipDryRun = lens _dnipDryRun (\s a -> s {_dnipDryRun = a})

-- | The ID of the path.
dnipNetworkInsightsPathId :: Lens' DeleteNetworkInsightsPath Text
dnipNetworkInsightsPathId = lens _dnipNetworkInsightsPathId (\s a -> s {_dnipNetworkInsightsPathId = a})

instance AWSRequest DeleteNetworkInsightsPath where
  type
    Rs DeleteNetworkInsightsPath =
      DeleteNetworkInsightsPathResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteNetworkInsightsPathResponse'
            <$> (x .@? "networkInsightsPathId")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteNetworkInsightsPath

instance NFData DeleteNetworkInsightsPath

instance ToHeaders DeleteNetworkInsightsPath where
  toHeaders = const mempty

instance ToPath DeleteNetworkInsightsPath where
  toPath = const "/"

instance ToQuery DeleteNetworkInsightsPath where
  toQuery DeleteNetworkInsightsPath' {..} =
    mconcat
      [ "Action"
          =: ("DeleteNetworkInsightsPath" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dnipDryRun,
        "NetworkInsightsPathId"
          =: _dnipNetworkInsightsPathId
      ]

-- | /See:/ 'deleteNetworkInsightsPathResponse' smart constructor.
data DeleteNetworkInsightsPathResponse = DeleteNetworkInsightsPathResponse'
  { _dniprrsNetworkInsightsPathId ::
      !( Maybe
           Text
       ),
    _dniprrsResponseStatus ::
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

-- | Creates a value of 'DeleteNetworkInsightsPathResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dniprrsNetworkInsightsPathId' - The ID of the path.
--
-- * 'dniprrsResponseStatus' - -- | The response status code.
deleteNetworkInsightsPathResponse ::
  -- | 'dniprrsResponseStatus'
  Int ->
  DeleteNetworkInsightsPathResponse
deleteNetworkInsightsPathResponse pResponseStatus_ =
  DeleteNetworkInsightsPathResponse'
    { _dniprrsNetworkInsightsPathId =
        Nothing,
      _dniprrsResponseStatus =
        pResponseStatus_
    }

-- | The ID of the path.
dniprrsNetworkInsightsPathId :: Lens' DeleteNetworkInsightsPathResponse (Maybe Text)
dniprrsNetworkInsightsPathId = lens _dniprrsNetworkInsightsPathId (\s a -> s {_dniprrsNetworkInsightsPathId = a})

-- | -- | The response status code.
dniprrsResponseStatus :: Lens' DeleteNetworkInsightsPathResponse Int
dniprrsResponseStatus = lens _dniprrsResponseStatus (\s a -> s {_dniprrsResponseStatus = a})

instance NFData DeleteNetworkInsightsPathResponse

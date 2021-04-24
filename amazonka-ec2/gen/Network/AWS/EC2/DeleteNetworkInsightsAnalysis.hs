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
-- Module      : Network.AWS.EC2.DeleteNetworkInsightsAnalysis
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified network insights analysis.
module Network.AWS.EC2.DeleteNetworkInsightsAnalysis
  ( -- * Creating a Request
    deleteNetworkInsightsAnalysis,
    DeleteNetworkInsightsAnalysis,

    -- * Request Lenses
    dnianDryRun,
    dnianNetworkInsightsAnalysisId,

    -- * Destructuring the Response
    deleteNetworkInsightsAnalysisResponse,
    DeleteNetworkInsightsAnalysisResponse,

    -- * Response Lenses
    dniarnrsNetworkInsightsAnalysisId,
    dniarnrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteNetworkInsightsAnalysis' smart constructor.
data DeleteNetworkInsightsAnalysis = DeleteNetworkInsightsAnalysis'
  { _dnianDryRun ::
      !( Maybe
           Bool
       ),
    _dnianNetworkInsightsAnalysisId ::
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

-- | Creates a value of 'DeleteNetworkInsightsAnalysis' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dnianDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dnianNetworkInsightsAnalysisId' - The ID of the network insights analysis.
deleteNetworkInsightsAnalysis ::
  -- | 'dnianNetworkInsightsAnalysisId'
  Text ->
  DeleteNetworkInsightsAnalysis
deleteNetworkInsightsAnalysis
  pNetworkInsightsAnalysisId_ =
    DeleteNetworkInsightsAnalysis'
      { _dnianDryRun =
          Nothing,
        _dnianNetworkInsightsAnalysisId =
          pNetworkInsightsAnalysisId_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dnianDryRun :: Lens' DeleteNetworkInsightsAnalysis (Maybe Bool)
dnianDryRun = lens _dnianDryRun (\s a -> s {_dnianDryRun = a})

-- | The ID of the network insights analysis.
dnianNetworkInsightsAnalysisId :: Lens' DeleteNetworkInsightsAnalysis Text
dnianNetworkInsightsAnalysisId = lens _dnianNetworkInsightsAnalysisId (\s a -> s {_dnianNetworkInsightsAnalysisId = a})

instance AWSRequest DeleteNetworkInsightsAnalysis where
  type
    Rs DeleteNetworkInsightsAnalysis =
      DeleteNetworkInsightsAnalysisResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteNetworkInsightsAnalysisResponse'
            <$> (x .@? "networkInsightsAnalysisId")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteNetworkInsightsAnalysis

instance NFData DeleteNetworkInsightsAnalysis

instance ToHeaders DeleteNetworkInsightsAnalysis where
  toHeaders = const mempty

instance ToPath DeleteNetworkInsightsAnalysis where
  toPath = const "/"

instance ToQuery DeleteNetworkInsightsAnalysis where
  toQuery DeleteNetworkInsightsAnalysis' {..} =
    mconcat
      [ "Action"
          =: ("DeleteNetworkInsightsAnalysis" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dnianDryRun,
        "NetworkInsightsAnalysisId"
          =: _dnianNetworkInsightsAnalysisId
      ]

-- | /See:/ 'deleteNetworkInsightsAnalysisResponse' smart constructor.
data DeleteNetworkInsightsAnalysisResponse = DeleteNetworkInsightsAnalysisResponse'
  { _dniarnrsNetworkInsightsAnalysisId ::
      !( Maybe
           Text
       ),
    _dniarnrsResponseStatus ::
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

-- | Creates a value of 'DeleteNetworkInsightsAnalysisResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dniarnrsNetworkInsightsAnalysisId' - The ID of the network insights analysis.
--
-- * 'dniarnrsResponseStatus' - -- | The response status code.
deleteNetworkInsightsAnalysisResponse ::
  -- | 'dniarnrsResponseStatus'
  Int ->
  DeleteNetworkInsightsAnalysisResponse
deleteNetworkInsightsAnalysisResponse
  pResponseStatus_ =
    DeleteNetworkInsightsAnalysisResponse'
      { _dniarnrsNetworkInsightsAnalysisId =
          Nothing,
        _dniarnrsResponseStatus =
          pResponseStatus_
      }

-- | The ID of the network insights analysis.
dniarnrsNetworkInsightsAnalysisId :: Lens' DeleteNetworkInsightsAnalysisResponse (Maybe Text)
dniarnrsNetworkInsightsAnalysisId = lens _dniarnrsNetworkInsightsAnalysisId (\s a -> s {_dniarnrsNetworkInsightsAnalysisId = a})

-- | -- | The response status code.
dniarnrsResponseStatus :: Lens' DeleteNetworkInsightsAnalysisResponse Int
dniarnrsResponseStatus = lens _dniarnrsResponseStatus (\s a -> s {_dniarnrsResponseStatus = a})

instance NFData DeleteNetworkInsightsAnalysisResponse

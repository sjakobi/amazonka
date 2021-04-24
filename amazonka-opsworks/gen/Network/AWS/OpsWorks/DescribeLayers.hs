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
-- Module      : Network.AWS.OpsWorks.DescribeLayers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests a description of one or more layers in a specified stack.
--
--
-- __Required Permissions__ : To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions> .
module Network.AWS.OpsWorks.DescribeLayers
  ( -- * Creating a Request
    describeLayers,
    DescribeLayers,

    -- * Request Lenses
    dlStackId,
    dlLayerIds,

    -- * Destructuring the Response
    describeLayersResponse,
    DescribeLayersResponse,

    -- * Response Lenses
    dlrrsLayers,
    dlrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeLayers' smart constructor.
data DescribeLayers = DescribeLayers'
  { _dlStackId ::
      !(Maybe Text),
    _dlLayerIds :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeLayers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlStackId' - The stack ID.
--
-- * 'dlLayerIds' - An array of layer IDs that specify the layers to be described. If you omit this parameter, @DescribeLayers@ returns a description of every layer in the specified stack.
describeLayers ::
  DescribeLayers
describeLayers =
  DescribeLayers'
    { _dlStackId = Nothing,
      _dlLayerIds = Nothing
    }

-- | The stack ID.
dlStackId :: Lens' DescribeLayers (Maybe Text)
dlStackId = lens _dlStackId (\s a -> s {_dlStackId = a})

-- | An array of layer IDs that specify the layers to be described. If you omit this parameter, @DescribeLayers@ returns a description of every layer in the specified stack.
dlLayerIds :: Lens' DescribeLayers [Text]
dlLayerIds = lens _dlLayerIds (\s a -> s {_dlLayerIds = a}) . _Default . _Coerce

instance AWSRequest DescribeLayers where
  type Rs DescribeLayers = DescribeLayersResponse
  request = postJSON opsWorks
  response =
    receiveJSON
      ( \s h x ->
          DescribeLayersResponse'
            <$> (x .?> "Layers" .!@ mempty) <*> (pure (fromEnum s))
      )

instance Hashable DescribeLayers

instance NFData DescribeLayers

instance ToHeaders DescribeLayers where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("OpsWorks_20130218.DescribeLayers" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeLayers where
  toJSON DescribeLayers' {..} =
    object
      ( catMaybes
          [ ("StackId" .=) <$> _dlStackId,
            ("LayerIds" .=) <$> _dlLayerIds
          ]
      )

instance ToPath DescribeLayers where
  toPath = const "/"

instance ToQuery DescribeLayers where
  toQuery = const mempty

-- | Contains the response to a @DescribeLayers@ request.
--
--
--
-- /See:/ 'describeLayersResponse' smart constructor.
data DescribeLayersResponse = DescribeLayersResponse'
  { _dlrrsLayers ::
      !(Maybe [Layer]),
    _dlrrsResponseStatus ::
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

-- | Creates a value of 'DescribeLayersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlrrsLayers' - An array of @Layer@ objects that describe the layers.
--
-- * 'dlrrsResponseStatus' - -- | The response status code.
describeLayersResponse ::
  -- | 'dlrrsResponseStatus'
  Int ->
  DescribeLayersResponse
describeLayersResponse pResponseStatus_ =
  DescribeLayersResponse'
    { _dlrrsLayers = Nothing,
      _dlrrsResponseStatus = pResponseStatus_
    }

-- | An array of @Layer@ objects that describe the layers.
dlrrsLayers :: Lens' DescribeLayersResponse [Layer]
dlrrsLayers = lens _dlrrsLayers (\s a -> s {_dlrrsLayers = a}) . _Default . _Coerce

-- | -- | The response status code.
dlrrsResponseStatus :: Lens' DescribeLayersResponse Int
dlrrsResponseStatus = lens _dlrrsResponseStatus (\s a -> s {_dlrrsResponseStatus = a})

instance NFData DescribeLayersResponse

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
-- Module      : Network.AWS.Connect.DescribeContactFlow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified contact flow.
--
--
-- You can also create and update contact flows using the <https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html Amazon Connect Flow language> .
module Network.AWS.Connect.DescribeContactFlow
  ( -- * Creating a Request
    describeContactFlow,
    DescribeContactFlow,

    -- * Request Lenses
    dcfInstanceId,
    dcfContactFlowId,

    -- * Destructuring the Response
    describeContactFlowResponse,
    DescribeContactFlowResponse,

    -- * Response Lenses
    dcfrrsContactFlow,
    dcfrrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeContactFlow' smart constructor.
data DescribeContactFlow = DescribeContactFlow'
  { _dcfInstanceId ::
      !Text,
    _dcfContactFlowId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeContactFlow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcfInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'dcfContactFlowId' - The identifier of the contact flow.
describeContactFlow ::
  -- | 'dcfInstanceId'
  Text ->
  -- | 'dcfContactFlowId'
  Text ->
  DescribeContactFlow
describeContactFlow pInstanceId_ pContactFlowId_ =
  DescribeContactFlow'
    { _dcfInstanceId = pInstanceId_,
      _dcfContactFlowId = pContactFlowId_
    }

-- | The identifier of the Amazon Connect instance.
dcfInstanceId :: Lens' DescribeContactFlow Text
dcfInstanceId = lens _dcfInstanceId (\s a -> s {_dcfInstanceId = a})

-- | The identifier of the contact flow.
dcfContactFlowId :: Lens' DescribeContactFlow Text
dcfContactFlowId = lens _dcfContactFlowId (\s a -> s {_dcfContactFlowId = a})

instance AWSRequest DescribeContactFlow where
  type
    Rs DescribeContactFlow =
      DescribeContactFlowResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          DescribeContactFlowResponse'
            <$> (x .?> "ContactFlow") <*> (pure (fromEnum s))
      )

instance Hashable DescribeContactFlow

instance NFData DescribeContactFlow

instance ToHeaders DescribeContactFlow where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeContactFlow where
  toPath DescribeContactFlow' {..} =
    mconcat
      [ "/contact-flows/",
        toBS _dcfInstanceId,
        "/",
        toBS _dcfContactFlowId
      ]

instance ToQuery DescribeContactFlow where
  toQuery = const mempty

-- | /See:/ 'describeContactFlowResponse' smart constructor.
data DescribeContactFlowResponse = DescribeContactFlowResponse'
  { _dcfrrsContactFlow ::
      !( Maybe
           ContactFlow
       ),
    _dcfrrsResponseStatus ::
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

-- | Creates a value of 'DescribeContactFlowResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcfrrsContactFlow' - Information about the contact flow.
--
-- * 'dcfrrsResponseStatus' - -- | The response status code.
describeContactFlowResponse ::
  -- | 'dcfrrsResponseStatus'
  Int ->
  DescribeContactFlowResponse
describeContactFlowResponse pResponseStatus_ =
  DescribeContactFlowResponse'
    { _dcfrrsContactFlow =
        Nothing,
      _dcfrrsResponseStatus = pResponseStatus_
    }

-- | Information about the contact flow.
dcfrrsContactFlow :: Lens' DescribeContactFlowResponse (Maybe ContactFlow)
dcfrrsContactFlow = lens _dcfrrsContactFlow (\s a -> s {_dcfrrsContactFlow = a})

-- | -- | The response status code.
dcfrrsResponseStatus :: Lens' DescribeContactFlowResponse Int
dcfrrsResponseStatus = lens _dcfrrsResponseStatus (\s a -> s {_dcfrrsResponseStatus = a})

instance NFData DescribeContactFlowResponse

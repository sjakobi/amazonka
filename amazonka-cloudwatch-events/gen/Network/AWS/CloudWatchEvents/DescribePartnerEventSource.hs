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
-- Module      : Network.AWS.CloudWatchEvents.DescribePartnerEventSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- An SaaS partner can use this operation to list details about a partner event source that they have created. AWS customers do not use this operation. Instead, AWS customers can use 'DescribeEventSource' to see details about a partner event source that is shared with them.
module Network.AWS.CloudWatchEvents.DescribePartnerEventSource
  ( -- * Creating a Request
    describePartnerEventSource,
    DescribePartnerEventSource,

    -- * Request Lenses
    dpespName,

    -- * Destructuring the Response
    describePartnerEventSourceResponse,
    DescribePartnerEventSourceResponse,

    -- * Response Lenses
    dpesrrsARN,
    dpesrrsName,
    dpesrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describePartnerEventSource' smart constructor.
newtype DescribePartnerEventSource = DescribePartnerEventSource'
  { _dpespName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribePartnerEventSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpespName' - The name of the event source to display.
describePartnerEventSource ::
  -- | 'dpespName'
  Text ->
  DescribePartnerEventSource
describePartnerEventSource pName_ =
  DescribePartnerEventSource' {_dpespName = pName_}

-- | The name of the event source to display.
dpespName :: Lens' DescribePartnerEventSource Text
dpespName = lens _dpespName (\s a -> s {_dpespName = a})

instance AWSRequest DescribePartnerEventSource where
  type
    Rs DescribePartnerEventSource =
      DescribePartnerEventSourceResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          DescribePartnerEventSourceResponse'
            <$> (x .?> "Arn")
            <*> (x .?> "Name")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribePartnerEventSource

instance NFData DescribePartnerEventSource

instance ToHeaders DescribePartnerEventSource where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSEvents.DescribePartnerEventSource" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribePartnerEventSource where
  toJSON DescribePartnerEventSource' {..} =
    object (catMaybes [Just ("Name" .= _dpespName)])

instance ToPath DescribePartnerEventSource where
  toPath = const "/"

instance ToQuery DescribePartnerEventSource where
  toQuery = const mempty

-- | /See:/ 'describePartnerEventSourceResponse' smart constructor.
data DescribePartnerEventSourceResponse = DescribePartnerEventSourceResponse'
  { _dpesrrsARN ::
      !( Maybe
           Text
       ),
    _dpesrrsName ::
      !( Maybe
           Text
       ),
    _dpesrrsResponseStatus ::
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

-- | Creates a value of 'DescribePartnerEventSourceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpesrrsARN' - The ARN of the event source.
--
-- * 'dpesrrsName' - The name of the event source.
--
-- * 'dpesrrsResponseStatus' - -- | The response status code.
describePartnerEventSourceResponse ::
  -- | 'dpesrrsResponseStatus'
  Int ->
  DescribePartnerEventSourceResponse
describePartnerEventSourceResponse pResponseStatus_ =
  DescribePartnerEventSourceResponse'
    { _dpesrrsARN =
        Nothing,
      _dpesrrsName = Nothing,
      _dpesrrsResponseStatus =
        pResponseStatus_
    }

-- | The ARN of the event source.
dpesrrsARN :: Lens' DescribePartnerEventSourceResponse (Maybe Text)
dpesrrsARN = lens _dpesrrsARN (\s a -> s {_dpesrrsARN = a})

-- | The name of the event source.
dpesrrsName :: Lens' DescribePartnerEventSourceResponse (Maybe Text)
dpesrrsName = lens _dpesrrsName (\s a -> s {_dpesrrsName = a})

-- | -- | The response status code.
dpesrrsResponseStatus :: Lens' DescribePartnerEventSourceResponse Int
dpesrrsResponseStatus = lens _dpesrrsResponseStatus (\s a -> s {_dpesrrsResponseStatus = a})

instance NFData DescribePartnerEventSourceResponse

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
-- Module      : Network.AWS.Connect.DescribeHoursOfOperation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Describes the hours of operation.
module Network.AWS.Connect.DescribeHoursOfOperation
  ( -- * Creating a Request
    describeHoursOfOperation,
    DescribeHoursOfOperation,

    -- * Request Lenses
    dhooInstanceId,
    dhooHoursOfOperationId,

    -- * Destructuring the Response
    describeHoursOfOperationResponse,
    DescribeHoursOfOperationResponse,

    -- * Response Lenses
    dhoorrsHoursOfOperation,
    dhoorrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeHoursOfOperation' smart constructor.
data DescribeHoursOfOperation = DescribeHoursOfOperation'
  { _dhooInstanceId ::
      !Text,
    _dhooHoursOfOperationId ::
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

-- | Creates a value of 'DescribeHoursOfOperation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhooInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'dhooHoursOfOperationId' - The identifier for the hours of operation.
describeHoursOfOperation ::
  -- | 'dhooInstanceId'
  Text ->
  -- | 'dhooHoursOfOperationId'
  Text ->
  DescribeHoursOfOperation
describeHoursOfOperation
  pInstanceId_
  pHoursOfOperationId_ =
    DescribeHoursOfOperation'
      { _dhooInstanceId =
          pInstanceId_,
        _dhooHoursOfOperationId = pHoursOfOperationId_
      }

-- | The identifier of the Amazon Connect instance.
dhooInstanceId :: Lens' DescribeHoursOfOperation Text
dhooInstanceId = lens _dhooInstanceId (\s a -> s {_dhooInstanceId = a})

-- | The identifier for the hours of operation.
dhooHoursOfOperationId :: Lens' DescribeHoursOfOperation Text
dhooHoursOfOperationId = lens _dhooHoursOfOperationId (\s a -> s {_dhooHoursOfOperationId = a})

instance AWSRequest DescribeHoursOfOperation where
  type
    Rs DescribeHoursOfOperation =
      DescribeHoursOfOperationResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          DescribeHoursOfOperationResponse'
            <$> (x .?> "HoursOfOperation") <*> (pure (fromEnum s))
      )

instance Hashable DescribeHoursOfOperation

instance NFData DescribeHoursOfOperation

instance ToHeaders DescribeHoursOfOperation where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeHoursOfOperation where
  toPath DescribeHoursOfOperation' {..} =
    mconcat
      [ "/hours-of-operations/",
        toBS _dhooInstanceId,
        "/",
        toBS _dhooHoursOfOperationId
      ]

instance ToQuery DescribeHoursOfOperation where
  toQuery = const mempty

-- | /See:/ 'describeHoursOfOperationResponse' smart constructor.
data DescribeHoursOfOperationResponse = DescribeHoursOfOperationResponse'
  { _dhoorrsHoursOfOperation ::
      !( Maybe
           HoursOfOperation
       ),
    _dhoorrsResponseStatus ::
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

-- | Creates a value of 'DescribeHoursOfOperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhoorrsHoursOfOperation' - The hours of operation.
--
-- * 'dhoorrsResponseStatus' - -- | The response status code.
describeHoursOfOperationResponse ::
  -- | 'dhoorrsResponseStatus'
  Int ->
  DescribeHoursOfOperationResponse
describeHoursOfOperationResponse pResponseStatus_ =
  DescribeHoursOfOperationResponse'
    { _dhoorrsHoursOfOperation =
        Nothing,
      _dhoorrsResponseStatus = pResponseStatus_
    }

-- | The hours of operation.
dhoorrsHoursOfOperation :: Lens' DescribeHoursOfOperationResponse (Maybe HoursOfOperation)
dhoorrsHoursOfOperation = lens _dhoorrsHoursOfOperation (\s a -> s {_dhoorrsHoursOfOperation = a})

-- | -- | The response status code.
dhoorrsResponseStatus :: Lens' DescribeHoursOfOperationResponse Int
dhoorrsResponseStatus = lens _dhoorrsResponseStatus (\s a -> s {_dhoorrsResponseStatus = a})

instance NFData DescribeHoursOfOperationResponse

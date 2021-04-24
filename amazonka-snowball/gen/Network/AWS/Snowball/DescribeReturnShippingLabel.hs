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
-- Module      : Network.AWS.Snowball.DescribeReturnShippingLabel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Information on the shipping label of a Snow device that is being returned to AWS.
module Network.AWS.Snowball.DescribeReturnShippingLabel
  ( -- * Creating a Request
    describeReturnShippingLabel,
    DescribeReturnShippingLabel,

    -- * Request Lenses
    drslJobId,

    -- * Destructuring the Response
    describeReturnShippingLabelResponse,
    DescribeReturnShippingLabelResponse,

    -- * Response Lenses
    drslrrsStatus,
    drslrrsExpirationDate,
    drslrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Snowball.Types

-- | /See:/ 'describeReturnShippingLabel' smart constructor.
newtype DescribeReturnShippingLabel = DescribeReturnShippingLabel'
  { _drslJobId ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeReturnShippingLabel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drslJobId' - The automatically generated ID for a job, for example @JID123e4567-e89b-12d3-a456-426655440000@ .
describeReturnShippingLabel ::
  DescribeReturnShippingLabel
describeReturnShippingLabel =
  DescribeReturnShippingLabel' {_drslJobId = Nothing}

-- | The automatically generated ID for a job, for example @JID123e4567-e89b-12d3-a456-426655440000@ .
drslJobId :: Lens' DescribeReturnShippingLabel (Maybe Text)
drslJobId = lens _drslJobId (\s a -> s {_drslJobId = a})

instance AWSRequest DescribeReturnShippingLabel where
  type
    Rs DescribeReturnShippingLabel =
      DescribeReturnShippingLabelResponse
  request = postJSON snowball
  response =
    receiveJSON
      ( \s h x ->
          DescribeReturnShippingLabelResponse'
            <$> (x .?> "Status")
            <*> (x .?> "ExpirationDate")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeReturnShippingLabel

instance NFData DescribeReturnShippingLabel

instance ToHeaders DescribeReturnShippingLabel where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSIESnowballJobManagementService.DescribeReturnShippingLabel" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeReturnShippingLabel where
  toJSON DescribeReturnShippingLabel' {..} =
    object (catMaybes [("JobId" .=) <$> _drslJobId])

instance ToPath DescribeReturnShippingLabel where
  toPath = const "/"

instance ToQuery DescribeReturnShippingLabel where
  toQuery = const mempty

-- | /See:/ 'describeReturnShippingLabelResponse' smart constructor.
data DescribeReturnShippingLabelResponse = DescribeReturnShippingLabelResponse'
  { _drslrrsStatus ::
      !( Maybe
           ShippingLabelStatus
       ),
    _drslrrsExpirationDate ::
      !( Maybe
           POSIX
       ),
    _drslrrsResponseStatus ::
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

-- | Creates a value of 'DescribeReturnShippingLabelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drslrrsStatus' - The status information of the task on a Snow device that is being returned to AWS.
--
-- * 'drslrrsExpirationDate' - The expiration date of the current return shipping label.
--
-- * 'drslrrsResponseStatus' - -- | The response status code.
describeReturnShippingLabelResponse ::
  -- | 'drslrrsResponseStatus'
  Int ->
  DescribeReturnShippingLabelResponse
describeReturnShippingLabelResponse pResponseStatus_ =
  DescribeReturnShippingLabelResponse'
    { _drslrrsStatus =
        Nothing,
      _drslrrsExpirationDate = Nothing,
      _drslrrsResponseStatus =
        pResponseStatus_
    }

-- | The status information of the task on a Snow device that is being returned to AWS.
drslrrsStatus :: Lens' DescribeReturnShippingLabelResponse (Maybe ShippingLabelStatus)
drslrrsStatus = lens _drslrrsStatus (\s a -> s {_drslrrsStatus = a})

-- | The expiration date of the current return shipping label.
drslrrsExpirationDate :: Lens' DescribeReturnShippingLabelResponse (Maybe UTCTime)
drslrrsExpirationDate = lens _drslrrsExpirationDate (\s a -> s {_drslrrsExpirationDate = a}) . mapping _Time

-- | -- | The response status code.
drslrrsResponseStatus :: Lens' DescribeReturnShippingLabelResponse Int
drslrrsResponseStatus = lens _drslrrsResponseStatus (\s a -> s {_drslrrsResponseStatus = a})

instance NFData DescribeReturnShippingLabelResponse

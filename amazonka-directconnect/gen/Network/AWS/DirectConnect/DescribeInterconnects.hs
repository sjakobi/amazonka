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
-- Module      : Network.AWS.DirectConnect.DescribeInterconnects
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the interconnects owned by the AWS account or only the specified interconnect.
module Network.AWS.DirectConnect.DescribeInterconnects
  ( -- * Creating a Request
    describeInterconnects,
    DescribeInterconnects,

    -- * Request Lenses
    dInterconnectId,

    -- * Destructuring the Response
    describeInterconnectsResponse,
    DescribeInterconnectsResponse,

    -- * Response Lenses
    desrsInterconnects,
    desrsResponseStatus,
  )
where

import Network.AWS.DirectConnect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeInterconnects' smart constructor.
newtype DescribeInterconnects = DescribeInterconnects'
  { _dInterconnectId ::
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

-- | Creates a value of 'DescribeInterconnects' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dInterconnectId' - The ID of the interconnect.
describeInterconnects ::
  DescribeInterconnects
describeInterconnects =
  DescribeInterconnects' {_dInterconnectId = Nothing}

-- | The ID of the interconnect.
dInterconnectId :: Lens' DescribeInterconnects (Maybe Text)
dInterconnectId = lens _dInterconnectId (\s a -> s {_dInterconnectId = a})

instance AWSRequest DescribeInterconnects where
  type
    Rs DescribeInterconnects =
      DescribeInterconnectsResponse
  request = postJSON directConnect
  response =
    receiveJSON
      ( \s h x ->
          DescribeInterconnectsResponse'
            <$> (x .?> "interconnects" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeInterconnects

instance NFData DescribeInterconnects

instance ToHeaders DescribeInterconnects where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OvertureService.DescribeInterconnects" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeInterconnects where
  toJSON DescribeInterconnects' {..} =
    object
      ( catMaybes
          [("interconnectId" .=) <$> _dInterconnectId]
      )

instance ToPath DescribeInterconnects where
  toPath = const "/"

instance ToQuery DescribeInterconnects where
  toQuery = const mempty

-- | /See:/ 'describeInterconnectsResponse' smart constructor.
data DescribeInterconnectsResponse = DescribeInterconnectsResponse'
  { _desrsInterconnects ::
      !( Maybe
           [Interconnect]
       ),
    _desrsResponseStatus ::
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

-- | Creates a value of 'DescribeInterconnectsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsInterconnects' - The interconnects.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeInterconnectsResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeInterconnectsResponse
describeInterconnectsResponse pResponseStatus_ =
  DescribeInterconnectsResponse'
    { _desrsInterconnects =
        Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | The interconnects.
desrsInterconnects :: Lens' DescribeInterconnectsResponse [Interconnect]
desrsInterconnects = lens _desrsInterconnects (\s a -> s {_desrsInterconnects = a}) . _Default . _Coerce

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeInterconnectsResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeInterconnectsResponse

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
-- Module      : Network.AWS.DirectConnect.DescribeLags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes all your link aggregation groups (LAG) or the specified LAG.
module Network.AWS.DirectConnect.DescribeLags
  ( -- * Creating a Request
    describeLags,
    DescribeLags,

    -- * Request Lenses
    dLagId,

    -- * Destructuring the Response
    describeLagsResponse,
    DescribeLagsResponse,

    -- * Response Lenses
    dlrrsLags,
    dlrrsResponseStatus,
  )
where

import Network.AWS.DirectConnect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeLags' smart constructor.
newtype DescribeLags = DescribeLags'
  { _dLagId ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeLags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dLagId' - The ID of the LAG.
describeLags ::
  DescribeLags
describeLags = DescribeLags' {_dLagId = Nothing}

-- | The ID of the LAG.
dLagId :: Lens' DescribeLags (Maybe Text)
dLagId = lens _dLagId (\s a -> s {_dLagId = a})

instance AWSRequest DescribeLags where
  type Rs DescribeLags = DescribeLagsResponse
  request = postJSON directConnect
  response =
    receiveJSON
      ( \s h x ->
          DescribeLagsResponse'
            <$> (x .?> "lags" .!@ mempty) <*> (pure (fromEnum s))
      )

instance Hashable DescribeLags

instance NFData DescribeLags

instance ToHeaders DescribeLags where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("OvertureService.DescribeLags" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeLags where
  toJSON DescribeLags' {..} =
    object (catMaybes [("lagId" .=) <$> _dLagId])

instance ToPath DescribeLags where
  toPath = const "/"

instance ToQuery DescribeLags where
  toQuery = const mempty

-- | /See:/ 'describeLagsResponse' smart constructor.
data DescribeLagsResponse = DescribeLagsResponse'
  { _dlrrsLags ::
      !(Maybe [Lag]),
    _dlrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeLagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlrrsLags' - The LAGs.
--
-- * 'dlrrsResponseStatus' - -- | The response status code.
describeLagsResponse ::
  -- | 'dlrrsResponseStatus'
  Int ->
  DescribeLagsResponse
describeLagsResponse pResponseStatus_ =
  DescribeLagsResponse'
    { _dlrrsLags = Nothing,
      _dlrrsResponseStatus = pResponseStatus_
    }

-- | The LAGs.
dlrrsLags :: Lens' DescribeLagsResponse [Lag]
dlrrsLags = lens _dlrrsLags (\s a -> s {_dlrrsLags = a}) . _Default . _Coerce

-- | -- | The response status code.
dlrrsResponseStatus :: Lens' DescribeLagsResponse Int
dlrrsResponseStatus = lens _dlrrsResponseStatus (\s a -> s {_dlrrsResponseStatus = a})

instance NFData DescribeLagsResponse

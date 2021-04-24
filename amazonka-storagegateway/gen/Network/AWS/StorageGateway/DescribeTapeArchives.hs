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
-- Module      : Network.AWS.StorageGateway.DescribeTapeArchives
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a description of specified virtual tapes in the virtual tape shelf (VTS). This operation is only supported in the tape gateway type.
--
--
-- If a specific @TapeARN@ is not specified, AWS Storage Gateway returns a description of all virtual tapes found in the VTS associated with your account.
--
--
-- This operation returns paginated results.
module Network.AWS.StorageGateway.DescribeTapeArchives
  ( -- * Creating a Request
    describeTapeArchives,
    DescribeTapeArchives,

    -- * Request Lenses
    dtaTapeARNs,
    dtaLimit,
    dtaMarker,

    -- * Destructuring the Response
    describeTapeArchivesResponse,
    DescribeTapeArchivesResponse,

    -- * Response Lenses
    drsTapeArchives,
    drsMarker,
    drsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | DescribeTapeArchivesInput
--
--
--
-- /See:/ 'describeTapeArchives' smart constructor.
data DescribeTapeArchives = DescribeTapeArchives'
  { _dtaTapeARNs ::
      !(Maybe [Text]),
    _dtaLimit :: !(Maybe Nat),
    _dtaMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeTapeArchives' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtaTapeARNs' - Specifies one or more unique Amazon Resource Names (ARNs) that represent the virtual tapes you want to describe.
--
-- * 'dtaLimit' - Specifies that the number of virtual tapes described be limited to the specified number.
--
-- * 'dtaMarker' - An opaque string that indicates the position at which to begin describing virtual tapes.
describeTapeArchives ::
  DescribeTapeArchives
describeTapeArchives =
  DescribeTapeArchives'
    { _dtaTapeARNs = Nothing,
      _dtaLimit = Nothing,
      _dtaMarker = Nothing
    }

-- | Specifies one or more unique Amazon Resource Names (ARNs) that represent the virtual tapes you want to describe.
dtaTapeARNs :: Lens' DescribeTapeArchives [Text]
dtaTapeARNs = lens _dtaTapeARNs (\s a -> s {_dtaTapeARNs = a}) . _Default . _Coerce

-- | Specifies that the number of virtual tapes described be limited to the specified number.
dtaLimit :: Lens' DescribeTapeArchives (Maybe Natural)
dtaLimit = lens _dtaLimit (\s a -> s {_dtaLimit = a}) . mapping _Nat

-- | An opaque string that indicates the position at which to begin describing virtual tapes.
dtaMarker :: Lens' DescribeTapeArchives (Maybe Text)
dtaMarker = lens _dtaMarker (\s a -> s {_dtaMarker = a})

instance AWSPager DescribeTapeArchives where
  page rq rs
    | stop (rs ^. drsMarker) = Nothing
    | stop (rs ^. drsTapeArchives) = Nothing
    | otherwise =
      Just $ rq & dtaMarker .~ rs ^. drsMarker

instance AWSRequest DescribeTapeArchives where
  type
    Rs DescribeTapeArchives =
      DescribeTapeArchivesResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          DescribeTapeArchivesResponse'
            <$> (x .?> "TapeArchives" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTapeArchives

instance NFData DescribeTapeArchives

instance ToHeaders DescribeTapeArchives where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.DescribeTapeArchives" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeTapeArchives where
  toJSON DescribeTapeArchives' {..} =
    object
      ( catMaybes
          [ ("TapeARNs" .=) <$> _dtaTapeARNs,
            ("Limit" .=) <$> _dtaLimit,
            ("Marker" .=) <$> _dtaMarker
          ]
      )

instance ToPath DescribeTapeArchives where
  toPath = const "/"

instance ToQuery DescribeTapeArchives where
  toQuery = const mempty

-- | DescribeTapeArchivesOutput
--
--
--
-- /See:/ 'describeTapeArchivesResponse' smart constructor.
data DescribeTapeArchivesResponse = DescribeTapeArchivesResponse'
  { _drsTapeArchives ::
      !( Maybe
           [TapeArchive]
       ),
    _drsMarker ::
      !(Maybe Text),
    _drsResponseStatus ::
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

-- | Creates a value of 'DescribeTapeArchivesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsTapeArchives' - An array of virtual tape objects in the virtual tape shelf (VTS). The description includes of the Amazon Resource Name (ARN) of the virtual tapes. The information returned includes the Amazon Resource Names (ARNs) of the tapes, size of the tapes, status of the tapes, progress of the description, and tape barcode.
--
-- * 'drsMarker' - An opaque string that indicates the position at which the virtual tapes that were fetched for description ended. Use this marker in your next request to fetch the next set of virtual tapes in the virtual tape shelf (VTS). If there are no more virtual tapes to describe, this field does not appear in the response.
--
-- * 'drsResponseStatus' - -- | The response status code.
describeTapeArchivesResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DescribeTapeArchivesResponse
describeTapeArchivesResponse pResponseStatus_ =
  DescribeTapeArchivesResponse'
    { _drsTapeArchives =
        Nothing,
      _drsMarker = Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | An array of virtual tape objects in the virtual tape shelf (VTS). The description includes of the Amazon Resource Name (ARN) of the virtual tapes. The information returned includes the Amazon Resource Names (ARNs) of the tapes, size of the tapes, status of the tapes, progress of the description, and tape barcode.
drsTapeArchives :: Lens' DescribeTapeArchivesResponse [TapeArchive]
drsTapeArchives = lens _drsTapeArchives (\s a -> s {_drsTapeArchives = a}) . _Default . _Coerce

-- | An opaque string that indicates the position at which the virtual tapes that were fetched for description ended. Use this marker in your next request to fetch the next set of virtual tapes in the virtual tape shelf (VTS). If there are no more virtual tapes to describe, this field does not appear in the response.
drsMarker :: Lens' DescribeTapeArchivesResponse (Maybe Text)
drsMarker = lens _drsMarker (\s a -> s {_drsMarker = a})

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeTapeArchivesResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DescribeTapeArchivesResponse

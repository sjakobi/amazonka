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
-- Module      : Network.AWS.CloudHSM.ListHAPGs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is documentation for __AWS CloudHSM Classic__ . For more information, see <http://aws.amazon.com/cloudhsm/faqs-classic/ AWS CloudHSM Classic FAQs> , the <http://docs.aws.amazon.com/cloudhsm/classic/userguide/ AWS CloudHSM Classic User Guide> , and the <http://docs.aws.amazon.com/cloudhsm/classic/APIReference/ AWS CloudHSM Classic API Reference> .
--
--
-- __For information about the current version of AWS CloudHSM__ , see <http://aws.amazon.com/cloudhsm/ AWS CloudHSM> , the <http://docs.aws.amazon.com/cloudhsm/latest/userguide/ AWS CloudHSM User Guide> , and the <http://docs.aws.amazon.com/cloudhsm/latest/APIReference/ AWS CloudHSM API Reference> .
--
-- Lists the high-availability partition groups for the account.
--
-- This operation supports pagination with the use of the @NextToken@ member. If more results are available, the @NextToken@ member of the response contains a token that you pass in the next call to @ListHapgs@ to retrieve the next set of items.
--
--
-- This operation returns paginated results.
module Network.AWS.CloudHSM.ListHAPGs
  ( -- * Creating a Request
    listHAPGs,
    ListHAPGs,

    -- * Request Lenses
    lhapgNextToken,

    -- * Destructuring the Response
    listHAPGsResponse,
    ListHAPGsResponse,

    -- * Response Lenses
    lhapgrrsNextToken,
    lhapgrrsResponseStatus,
    lhapgrrsHAPGList,
  )
where

import Network.AWS.CloudHSM.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listHAPGs' smart constructor.
newtype ListHAPGs = ListHAPGs'
  { _lhapgNextToken ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListHAPGs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lhapgNextToken' - The @NextToken@ value from a previous call to @ListHapgs@ . Pass null if this is the first call.
listHAPGs ::
  ListHAPGs
listHAPGs = ListHAPGs' {_lhapgNextToken = Nothing}

-- | The @NextToken@ value from a previous call to @ListHapgs@ . Pass null if this is the first call.
lhapgNextToken :: Lens' ListHAPGs (Maybe Text)
lhapgNextToken = lens _lhapgNextToken (\s a -> s {_lhapgNextToken = a})

instance AWSPager ListHAPGs where
  page rq rs
    | stop (rs ^. lhapgrrsNextToken) = Nothing
    | stop (rs ^. lhapgrrsHAPGList) = Nothing
    | otherwise =
      Just $ rq & lhapgNextToken .~ rs ^. lhapgrrsNextToken

instance AWSRequest ListHAPGs where
  type Rs ListHAPGs = ListHAPGsResponse
  request = postJSON cloudHSM
  response =
    receiveJSON
      ( \s h x ->
          ListHAPGsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "HapgList" .!@ mempty)
      )

instance Hashable ListHAPGs

instance NFData ListHAPGs

instance ToHeaders ListHAPGs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CloudHsmFrontendService.ListHapgs" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListHAPGs where
  toJSON ListHAPGs' {..} =
    object
      (catMaybes [("NextToken" .=) <$> _lhapgNextToken])

instance ToPath ListHAPGs where
  toPath = const "/"

instance ToQuery ListHAPGs where
  toQuery = const mempty

-- | /See:/ 'listHAPGsResponse' smart constructor.
data ListHAPGsResponse = ListHAPGsResponse'
  { _lhapgrrsNextToken ::
      !(Maybe Text),
    _lhapgrrsResponseStatus :: !Int,
    _lhapgrrsHAPGList :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListHAPGsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lhapgrrsNextToken' - If not null, more results are available. Pass this value to @ListHapgs@ to retrieve the next set of items.
--
-- * 'lhapgrrsResponseStatus' - -- | The response status code.
--
-- * 'lhapgrrsHAPGList' - The list of high-availability partition groups.
listHAPGsResponse ::
  -- | 'lhapgrrsResponseStatus'
  Int ->
  ListHAPGsResponse
listHAPGsResponse pResponseStatus_ =
  ListHAPGsResponse'
    { _lhapgrrsNextToken = Nothing,
      _lhapgrrsResponseStatus = pResponseStatus_,
      _lhapgrrsHAPGList = mempty
    }

-- | If not null, more results are available. Pass this value to @ListHapgs@ to retrieve the next set of items.
lhapgrrsNextToken :: Lens' ListHAPGsResponse (Maybe Text)
lhapgrrsNextToken = lens _lhapgrrsNextToken (\s a -> s {_lhapgrrsNextToken = a})

-- | -- | The response status code.
lhapgrrsResponseStatus :: Lens' ListHAPGsResponse Int
lhapgrrsResponseStatus = lens _lhapgrrsResponseStatus (\s a -> s {_lhapgrrsResponseStatus = a})

-- | The list of high-availability partition groups.
lhapgrrsHAPGList :: Lens' ListHAPGsResponse [Text]
lhapgrrsHAPGList = lens _lhapgrrsHAPGList (\s a -> s {_lhapgrrsHAPGList = a}) . _Coerce

instance NFData ListHAPGsResponse

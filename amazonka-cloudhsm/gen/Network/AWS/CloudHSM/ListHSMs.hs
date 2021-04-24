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
-- Module      : Network.AWS.CloudHSM.ListHSMs
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
-- Retrieves the identifiers of all of the HSMs provisioned for the current customer.
--
-- This operation supports pagination with the use of the @NextToken@ member. If more results are available, the @NextToken@ member of the response contains a token that you pass in the next call to @ListHsms@ to retrieve the next set of items.
--
--
-- This operation returns paginated results.
module Network.AWS.CloudHSM.ListHSMs
  ( -- * Creating a Request
    listHSMs,
    ListHSMs,

    -- * Request Lenses
    lhNextToken,

    -- * Destructuring the Response
    listHSMsResponse,
    ListHSMsResponse,

    -- * Response Lenses
    lhrrsHSMList,
    lhrrsNextToken,
    lhrrsResponseStatus,
  )
where

import Network.AWS.CloudHSM.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listHSMs' smart constructor.
newtype ListHSMs = ListHSMs'
  { _lhNextToken ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListHSMs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lhNextToken' - The @NextToken@ value from a previous call to @ListHsms@ . Pass null if this is the first call.
listHSMs ::
  ListHSMs
listHSMs = ListHSMs' {_lhNextToken = Nothing}

-- | The @NextToken@ value from a previous call to @ListHsms@ . Pass null if this is the first call.
lhNextToken :: Lens' ListHSMs (Maybe Text)
lhNextToken = lens _lhNextToken (\s a -> s {_lhNextToken = a})

instance AWSPager ListHSMs where
  page rq rs
    | stop (rs ^. lhrrsNextToken) = Nothing
    | stop (rs ^. lhrrsHSMList) = Nothing
    | otherwise =
      Just $ rq & lhNextToken .~ rs ^. lhrrsNextToken

instance AWSRequest ListHSMs where
  type Rs ListHSMs = ListHSMsResponse
  request = postJSON cloudHSM
  response =
    receiveJSON
      ( \s h x ->
          ListHSMsResponse'
            <$> (x .?> "HsmList" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListHSMs

instance NFData ListHSMs

instance ToHeaders ListHSMs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CloudHsmFrontendService.ListHsms" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListHSMs where
  toJSON ListHSMs' {..} =
    object
      (catMaybes [("NextToken" .=) <$> _lhNextToken])

instance ToPath ListHSMs where
  toPath = const "/"

instance ToQuery ListHSMs where
  toQuery = const mempty

-- | Contains the output of the @ListHsms@ operation.
--
--
--
-- /See:/ 'listHSMsResponse' smart constructor.
data ListHSMsResponse = ListHSMsResponse'
  { _lhrrsHSMList ::
      !(Maybe [Text]),
    _lhrrsNextToken :: !(Maybe Text),
    _lhrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListHSMsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lhrrsHSMList' - The list of ARNs that identify the HSMs.
--
-- * 'lhrrsNextToken' - If not null, more results are available. Pass this value to @ListHsms@ to retrieve the next set of items.
--
-- * 'lhrrsResponseStatus' - -- | The response status code.
listHSMsResponse ::
  -- | 'lhrrsResponseStatus'
  Int ->
  ListHSMsResponse
listHSMsResponse pResponseStatus_ =
  ListHSMsResponse'
    { _lhrrsHSMList = Nothing,
      _lhrrsNextToken = Nothing,
      _lhrrsResponseStatus = pResponseStatus_
    }

-- | The list of ARNs that identify the HSMs.
lhrrsHSMList :: Lens' ListHSMsResponse [Text]
lhrrsHSMList = lens _lhrrsHSMList (\s a -> s {_lhrrsHSMList = a}) . _Default . _Coerce

-- | If not null, more results are available. Pass this value to @ListHsms@ to retrieve the next set of items.
lhrrsNextToken :: Lens' ListHSMsResponse (Maybe Text)
lhrrsNextToken = lens _lhrrsNextToken (\s a -> s {_lhrrsNextToken = a})

-- | -- | The response status code.
lhrrsResponseStatus :: Lens' ListHSMsResponse Int
lhrrsResponseStatus = lens _lhrrsResponseStatus (\s a -> s {_lhrrsResponseStatus = a})

instance NFData ListHSMsResponse

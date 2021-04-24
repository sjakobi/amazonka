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
-- Module      : Network.AWS.Connect.ListPhoneNumbers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides information about the phone numbers for the specified Amazon Connect instance.
--
--
-- For more information about phone numbers, see <https://docs.aws.amazon.com/connect/latest/adminguide/contact-center-phone-number.html Set Up Phone Numbers for Your Contact Center> in the /Amazon Connect Administrator Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.Connect.ListPhoneNumbers
  ( -- * Creating a Request
    listPhoneNumbers,
    ListPhoneNumbers,

    -- * Request Lenses
    lpnNextToken,
    lpnPhoneNumberTypes,
    lpnMaxResults,
    lpnPhoneNumberCountryCodes,
    lpnInstanceId,

    -- * Destructuring the Response
    listPhoneNumbersResponse,
    ListPhoneNumbersResponse,

    -- * Response Lenses
    lpnrrsNextToken,
    lpnrrsPhoneNumberSummaryList,
    lpnrrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listPhoneNumbers' smart constructor.
data ListPhoneNumbers = ListPhoneNumbers'
  { _lpnNextToken ::
      !(Maybe Text),
    _lpnPhoneNumberTypes ::
      !(Maybe [PhoneNumberType]),
    _lpnMaxResults :: !(Maybe Nat),
    _lpnPhoneNumberCountryCodes ::
      !(Maybe [PhoneNumberCountryCode]),
    _lpnInstanceId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPhoneNumbers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpnNextToken' - The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
--
-- * 'lpnPhoneNumberTypes' - The type of phone number.
--
-- * 'lpnMaxResults' - The maximum number of results to return per page.
--
-- * 'lpnPhoneNumberCountryCodes' - The ISO country code.
--
-- * 'lpnInstanceId' - The identifier of the Amazon Connect instance.
listPhoneNumbers ::
  -- | 'lpnInstanceId'
  Text ->
  ListPhoneNumbers
listPhoneNumbers pInstanceId_ =
  ListPhoneNumbers'
    { _lpnNextToken = Nothing,
      _lpnPhoneNumberTypes = Nothing,
      _lpnMaxResults = Nothing,
      _lpnPhoneNumberCountryCodes = Nothing,
      _lpnInstanceId = pInstanceId_
    }

-- | The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
lpnNextToken :: Lens' ListPhoneNumbers (Maybe Text)
lpnNextToken = lens _lpnNextToken (\s a -> s {_lpnNextToken = a})

-- | The type of phone number.
lpnPhoneNumberTypes :: Lens' ListPhoneNumbers [PhoneNumberType]
lpnPhoneNumberTypes = lens _lpnPhoneNumberTypes (\s a -> s {_lpnPhoneNumberTypes = a}) . _Default . _Coerce

-- | The maximum number of results to return per page.
lpnMaxResults :: Lens' ListPhoneNumbers (Maybe Natural)
lpnMaxResults = lens _lpnMaxResults (\s a -> s {_lpnMaxResults = a}) . mapping _Nat

-- | The ISO country code.
lpnPhoneNumberCountryCodes :: Lens' ListPhoneNumbers [PhoneNumberCountryCode]
lpnPhoneNumberCountryCodes = lens _lpnPhoneNumberCountryCodes (\s a -> s {_lpnPhoneNumberCountryCodes = a}) . _Default . _Coerce

-- | The identifier of the Amazon Connect instance.
lpnInstanceId :: Lens' ListPhoneNumbers Text
lpnInstanceId = lens _lpnInstanceId (\s a -> s {_lpnInstanceId = a})

instance AWSPager ListPhoneNumbers where
  page rq rs
    | stop (rs ^. lpnrrsNextToken) = Nothing
    | stop (rs ^. lpnrrsPhoneNumberSummaryList) = Nothing
    | otherwise =
      Just $ rq & lpnNextToken .~ rs ^. lpnrrsNextToken

instance AWSRequest ListPhoneNumbers where
  type Rs ListPhoneNumbers = ListPhoneNumbersResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          ListPhoneNumbersResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "PhoneNumberSummaryList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListPhoneNumbers

instance NFData ListPhoneNumbers

instance ToHeaders ListPhoneNumbers where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListPhoneNumbers where
  toPath ListPhoneNumbers' {..} =
    mconcat
      ["/phone-numbers-summary/", toBS _lpnInstanceId]

instance ToQuery ListPhoneNumbers where
  toQuery ListPhoneNumbers' {..} =
    mconcat
      [ "nextToken" =: _lpnNextToken,
        "phoneNumberTypes"
          =: toQuery
            (toQueryList "member" <$> _lpnPhoneNumberTypes),
        "maxResults" =: _lpnMaxResults,
        "phoneNumberCountryCodes"
          =: toQuery
            ( toQueryList "member"
                <$> _lpnPhoneNumberCountryCodes
            )
      ]

-- | /See:/ 'listPhoneNumbersResponse' smart constructor.
data ListPhoneNumbersResponse = ListPhoneNumbersResponse'
  { _lpnrrsNextToken ::
      !(Maybe Text),
    _lpnrrsPhoneNumberSummaryList ::
      !( Maybe
           [PhoneNumberSummary]
       ),
    _lpnrrsResponseStatus ::
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

-- | Creates a value of 'ListPhoneNumbersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpnrrsNextToken' - If there are additional results, this is the token for the next set of results.
--
-- * 'lpnrrsPhoneNumberSummaryList' - Information about the phone numbers.
--
-- * 'lpnrrsResponseStatus' - -- | The response status code.
listPhoneNumbersResponse ::
  -- | 'lpnrrsResponseStatus'
  Int ->
  ListPhoneNumbersResponse
listPhoneNumbersResponse pResponseStatus_ =
  ListPhoneNumbersResponse'
    { _lpnrrsNextToken =
        Nothing,
      _lpnrrsPhoneNumberSummaryList = Nothing,
      _lpnrrsResponseStatus = pResponseStatus_
    }

-- | If there are additional results, this is the token for the next set of results.
lpnrrsNextToken :: Lens' ListPhoneNumbersResponse (Maybe Text)
lpnrrsNextToken = lens _lpnrrsNextToken (\s a -> s {_lpnrrsNextToken = a})

-- | Information about the phone numbers.
lpnrrsPhoneNumberSummaryList :: Lens' ListPhoneNumbersResponse [PhoneNumberSummary]
lpnrrsPhoneNumberSummaryList = lens _lpnrrsPhoneNumberSummaryList (\s a -> s {_lpnrrsPhoneNumberSummaryList = a}) . _Default . _Coerce

-- | -- | The response status code.
lpnrrsResponseStatus :: Lens' ListPhoneNumbersResponse Int
lpnrrsResponseStatus = lens _lpnrrsResponseStatus (\s a -> s {_lpnrrsResponseStatus = a})

instance NFData ListPhoneNumbersResponse

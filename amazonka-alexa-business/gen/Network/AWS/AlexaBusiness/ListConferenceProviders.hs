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
-- Module      : Network.AWS.AlexaBusiness.ListConferenceProviders
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists conference providers under a specific AWS account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AlexaBusiness.ListConferenceProviders
  ( -- * Creating a Request
    listConferenceProviders,
    ListConferenceProviders,

    -- * Request Lenses
    lcpNextToken,
    lcpMaxResults,

    -- * Destructuring the Response
    listConferenceProvidersResponse,
    ListConferenceProvidersResponse,

    -- * Response Lenses
    lcprrsNextToken,
    lcprrsConferenceProviders,
    lcprrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listConferenceProviders' smart constructor.
data ListConferenceProviders = ListConferenceProviders'
  { _lcpNextToken ::
      !(Maybe Text),
    _lcpMaxResults ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListConferenceProviders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcpNextToken' - The tokens used for pagination.
--
-- * 'lcpMaxResults' - The maximum number of conference providers to be returned, per paginated calls.
listConferenceProviders ::
  ListConferenceProviders
listConferenceProviders =
  ListConferenceProviders'
    { _lcpNextToken = Nothing,
      _lcpMaxResults = Nothing
    }

-- | The tokens used for pagination.
lcpNextToken :: Lens' ListConferenceProviders (Maybe Text)
lcpNextToken = lens _lcpNextToken (\s a -> s {_lcpNextToken = a})

-- | The maximum number of conference providers to be returned, per paginated calls.
lcpMaxResults :: Lens' ListConferenceProviders (Maybe Natural)
lcpMaxResults = lens _lcpMaxResults (\s a -> s {_lcpMaxResults = a}) . mapping _Nat

instance AWSPager ListConferenceProviders where
  page rq rs
    | stop (rs ^. lcprrsNextToken) = Nothing
    | stop (rs ^. lcprrsConferenceProviders) = Nothing
    | otherwise =
      Just $ rq & lcpNextToken .~ rs ^. lcprrsNextToken

instance AWSRequest ListConferenceProviders where
  type
    Rs ListConferenceProviders =
      ListConferenceProvidersResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          ListConferenceProvidersResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ConferenceProviders" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListConferenceProviders

instance NFData ListConferenceProviders

instance ToHeaders ListConferenceProviders where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AlexaForBusiness.ListConferenceProviders" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListConferenceProviders where
  toJSON ListConferenceProviders' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lcpNextToken,
            ("MaxResults" .=) <$> _lcpMaxResults
          ]
      )

instance ToPath ListConferenceProviders where
  toPath = const "/"

instance ToQuery ListConferenceProviders where
  toQuery = const mempty

-- | /See:/ 'listConferenceProvidersResponse' smart constructor.
data ListConferenceProvidersResponse = ListConferenceProvidersResponse'
  { _lcprrsNextToken ::
      !( Maybe
           Text
       ),
    _lcprrsConferenceProviders ::
      !( Maybe
           [ConferenceProvider]
       ),
    _lcprrsResponseStatus ::
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

-- | Creates a value of 'ListConferenceProvidersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcprrsNextToken' - The tokens used for pagination.
--
-- * 'lcprrsConferenceProviders' - The conference providers.
--
-- * 'lcprrsResponseStatus' - -- | The response status code.
listConferenceProvidersResponse ::
  -- | 'lcprrsResponseStatus'
  Int ->
  ListConferenceProvidersResponse
listConferenceProvidersResponse pResponseStatus_ =
  ListConferenceProvidersResponse'
    { _lcprrsNextToken =
        Nothing,
      _lcprrsConferenceProviders = Nothing,
      _lcprrsResponseStatus = pResponseStatus_
    }

-- | The tokens used for pagination.
lcprrsNextToken :: Lens' ListConferenceProvidersResponse (Maybe Text)
lcprrsNextToken = lens _lcprrsNextToken (\s a -> s {_lcprrsNextToken = a})

-- | The conference providers.
lcprrsConferenceProviders :: Lens' ListConferenceProvidersResponse [ConferenceProvider]
lcprrsConferenceProviders = lens _lcprrsConferenceProviders (\s a -> s {_lcprrsConferenceProviders = a}) . _Default . _Coerce

-- | -- | The response status code.
lcprrsResponseStatus :: Lens' ListConferenceProvidersResponse Int
lcprrsResponseStatus = lens _lcprrsResponseStatus (\s a -> s {_lcprrsResponseStatus = a})

instance NFData ListConferenceProvidersResponse

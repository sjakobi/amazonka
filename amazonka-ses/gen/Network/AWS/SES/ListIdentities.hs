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
-- Module      : Network.AWS.SES.ListIdentities
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list containing all of the identities (email addresses and domains) for your AWS account in the current AWS Region, regardless of verification status.
--
--
-- You can execute this operation no more than once per second.
--
--
-- This operation returns paginated results.
module Network.AWS.SES.ListIdentities
  ( -- * Creating a Request
    listIdentities,
    ListIdentities,

    -- * Request Lenses
    liNextToken,
    liIdentityType,
    liMaxItems,

    -- * Destructuring the Response
    listIdentitiesResponse,
    ListIdentitiesResponse,

    -- * Response Lenses
    lirrsNextToken,
    lirrsResponseStatus,
    lirrsIdentities,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SES.Types

-- | Represents a request to return a list of all identities (email addresses and domains) that you have attempted to verify under your AWS account, regardless of verification status.
--
--
--
-- /See:/ 'listIdentities' smart constructor.
data ListIdentities = ListIdentities'
  { _liNextToken ::
      !(Maybe Text),
    _liIdentityType :: !(Maybe IdentityType),
    _liMaxItems :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListIdentities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liNextToken' - The token to use for pagination.
--
-- * 'liIdentityType' - The type of the identities to list. Possible values are "EmailAddress" and "Domain". If this parameter is omitted, then all identities will be listed.
--
-- * 'liMaxItems' - The maximum number of identities per page. Possible values are 1-1000 inclusive.
listIdentities ::
  ListIdentities
listIdentities =
  ListIdentities'
    { _liNextToken = Nothing,
      _liIdentityType = Nothing,
      _liMaxItems = Nothing
    }

-- | The token to use for pagination.
liNextToken :: Lens' ListIdentities (Maybe Text)
liNextToken = lens _liNextToken (\s a -> s {_liNextToken = a})

-- | The type of the identities to list. Possible values are "EmailAddress" and "Domain". If this parameter is omitted, then all identities will be listed.
liIdentityType :: Lens' ListIdentities (Maybe IdentityType)
liIdentityType = lens _liIdentityType (\s a -> s {_liIdentityType = a})

-- | The maximum number of identities per page. Possible values are 1-1000 inclusive.
liMaxItems :: Lens' ListIdentities (Maybe Int)
liMaxItems = lens _liMaxItems (\s a -> s {_liMaxItems = a})

instance AWSPager ListIdentities where
  page rq rs
    | stop (rs ^. lirrsNextToken) = Nothing
    | stop (rs ^. lirrsIdentities) = Nothing
    | otherwise =
      Just $ rq & liNextToken .~ rs ^. lirrsNextToken

instance AWSRequest ListIdentities where
  type Rs ListIdentities = ListIdentitiesResponse
  request = postQuery ses
  response =
    receiveXMLWrapper
      "ListIdentitiesResult"
      ( \s h x ->
          ListIdentitiesResponse'
            <$> (x .@? "NextToken")
            <*> (pure (fromEnum s))
            <*> ( x .@? "Identities" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable ListIdentities

instance NFData ListIdentities

instance ToHeaders ListIdentities where
  toHeaders = const mempty

instance ToPath ListIdentities where
  toPath = const "/"

instance ToQuery ListIdentities where
  toQuery ListIdentities' {..} =
    mconcat
      [ "Action" =: ("ListIdentities" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "NextToken" =: _liNextToken,
        "IdentityType" =: _liIdentityType,
        "MaxItems" =: _liMaxItems
      ]

-- | A list of all identities that you have attempted to verify under your AWS account, regardless of verification status.
--
--
--
-- /See:/ 'listIdentitiesResponse' smart constructor.
data ListIdentitiesResponse = ListIdentitiesResponse'
  { _lirrsNextToken ::
      !(Maybe Text),
    _lirrsResponseStatus ::
      !Int,
    _lirrsIdentities ::
      ![Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListIdentitiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lirrsNextToken' - The token used for pagination.
--
-- * 'lirrsResponseStatus' - -- | The response status code.
--
-- * 'lirrsIdentities' - A list of identities.
listIdentitiesResponse ::
  -- | 'lirrsResponseStatus'
  Int ->
  ListIdentitiesResponse
listIdentitiesResponse pResponseStatus_ =
  ListIdentitiesResponse'
    { _lirrsNextToken = Nothing,
      _lirrsResponseStatus = pResponseStatus_,
      _lirrsIdentities = mempty
    }

-- | The token used for pagination.
lirrsNextToken :: Lens' ListIdentitiesResponse (Maybe Text)
lirrsNextToken = lens _lirrsNextToken (\s a -> s {_lirrsNextToken = a})

-- | -- | The response status code.
lirrsResponseStatus :: Lens' ListIdentitiesResponse Int
lirrsResponseStatus = lens _lirrsResponseStatus (\s a -> s {_lirrsResponseStatus = a})

-- | A list of identities.
lirrsIdentities :: Lens' ListIdentitiesResponse [Text]
lirrsIdentities = lens _lirrsIdentities (\s a -> s {_lirrsIdentities = a}) . _Coerce

instance NFData ListIdentitiesResponse

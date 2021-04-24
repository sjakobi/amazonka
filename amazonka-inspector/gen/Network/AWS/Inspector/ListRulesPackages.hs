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
-- Module      : Network.AWS.Inspector.ListRulesPackages
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all available Amazon Inspector rules packages.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Inspector.ListRulesPackages
  ( -- * Creating a Request
    listRulesPackages,
    ListRulesPackages,

    -- * Request Lenses
    lrpNextToken,
    lrpMaxResults,

    -- * Destructuring the Response
    listRulesPackagesResponse,
    ListRulesPackagesResponse,

    -- * Response Lenses
    lrprrsNextToken,
    lrprrsResponseStatus,
    lrprrsRulesPackageARNs,
  )
where

import Network.AWS.Inspector.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listRulesPackages' smart constructor.
data ListRulesPackages = ListRulesPackages'
  { _lrpNextToken ::
      !(Maybe Text),
    _lrpMaxResults :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListRulesPackages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrpNextToken' - You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the __ListRulesPackages__ action. Subsequent calls to the action fill __nextToken__ in the request with the value of __NextToken__ from the previous response to continue listing data.
--
-- * 'lrpMaxResults' - You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.
listRulesPackages ::
  ListRulesPackages
listRulesPackages =
  ListRulesPackages'
    { _lrpNextToken = Nothing,
      _lrpMaxResults = Nothing
    }

-- | You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the __ListRulesPackages__ action. Subsequent calls to the action fill __nextToken__ in the request with the value of __NextToken__ from the previous response to continue listing data.
lrpNextToken :: Lens' ListRulesPackages (Maybe Text)
lrpNextToken = lens _lrpNextToken (\s a -> s {_lrpNextToken = a})

-- | You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.
lrpMaxResults :: Lens' ListRulesPackages (Maybe Int)
lrpMaxResults = lens _lrpMaxResults (\s a -> s {_lrpMaxResults = a})

instance AWSPager ListRulesPackages where
  page rq rs
    | stop (rs ^. lrprrsNextToken) = Nothing
    | stop (rs ^. lrprrsRulesPackageARNs) = Nothing
    | otherwise =
      Just $ rq & lrpNextToken .~ rs ^. lrprrsNextToken

instance AWSRequest ListRulesPackages where
  type Rs ListRulesPackages = ListRulesPackagesResponse
  request = postJSON inspector
  response =
    receiveJSON
      ( \s h x ->
          ListRulesPackagesResponse'
            <$> (x .?> "nextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "rulesPackageArns" .!@ mempty)
      )

instance Hashable ListRulesPackages

instance NFData ListRulesPackages

instance ToHeaders ListRulesPackages where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("InspectorService.ListRulesPackages" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListRulesPackages where
  toJSON ListRulesPackages' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _lrpNextToken,
            ("maxResults" .=) <$> _lrpMaxResults
          ]
      )

instance ToPath ListRulesPackages where
  toPath = const "/"

instance ToQuery ListRulesPackages where
  toQuery = const mempty

-- | /See:/ 'listRulesPackagesResponse' smart constructor.
data ListRulesPackagesResponse = ListRulesPackagesResponse'
  { _lrprrsNextToken ::
      !(Maybe Text),
    _lrprrsResponseStatus ::
      !Int,
    _lrprrsRulesPackageARNs ::
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

-- | Creates a value of 'ListRulesPackagesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrprrsNextToken' - When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the __nextToken__ parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.
--
-- * 'lrprrsResponseStatus' - -- | The response status code.
--
-- * 'lrprrsRulesPackageARNs' - The list of ARNs that specifies the rules packages returned by the action.
listRulesPackagesResponse ::
  -- | 'lrprrsResponseStatus'
  Int ->
  ListRulesPackagesResponse
listRulesPackagesResponse pResponseStatus_ =
  ListRulesPackagesResponse'
    { _lrprrsNextToken =
        Nothing,
      _lrprrsResponseStatus = pResponseStatus_,
      _lrprrsRulesPackageARNs = mempty
    }

-- | When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the __nextToken__ parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.
lrprrsNextToken :: Lens' ListRulesPackagesResponse (Maybe Text)
lrprrsNextToken = lens _lrprrsNextToken (\s a -> s {_lrprrsNextToken = a})

-- | -- | The response status code.
lrprrsResponseStatus :: Lens' ListRulesPackagesResponse Int
lrprrsResponseStatus = lens _lrprrsResponseStatus (\s a -> s {_lrprrsResponseStatus = a})

-- | The list of ARNs that specifies the rules packages returned by the action.
lrprrsRulesPackageARNs :: Lens' ListRulesPackagesResponse [Text]
lrprrsRulesPackageARNs = lens _lrprrsRulesPackageARNs (\s a -> s {_lrprrsRulesPackageARNs = a}) . _Coerce

instance NFData ListRulesPackagesResponse

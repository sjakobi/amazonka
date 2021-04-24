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
-- Module      : Network.AWS.IoT.ListProvisioningTemplates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the fleet provisioning templates in your AWS account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListProvisioningTemplates
  ( -- * Creating a Request
    listProvisioningTemplates,
    ListProvisioningTemplates,

    -- * Request Lenses
    lptNextToken,
    lptMaxResults,

    -- * Destructuring the Response
    listProvisioningTemplatesResponse,
    ListProvisioningTemplatesResponse,

    -- * Response Lenses
    lptrrsNextToken,
    lptrrsTemplates,
    lptrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listProvisioningTemplates' smart constructor.
data ListProvisioningTemplates = ListProvisioningTemplates'
  { _lptNextToken ::
      !(Maybe Text),
    _lptMaxResults ::
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

-- | Creates a value of 'ListProvisioningTemplates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lptNextToken' - A token to retrieve the next set of results.
--
-- * 'lptMaxResults' - The maximum number of results to return at one time.
listProvisioningTemplates ::
  ListProvisioningTemplates
listProvisioningTemplates =
  ListProvisioningTemplates'
    { _lptNextToken = Nothing,
      _lptMaxResults = Nothing
    }

-- | A token to retrieve the next set of results.
lptNextToken :: Lens' ListProvisioningTemplates (Maybe Text)
lptNextToken = lens _lptNextToken (\s a -> s {_lptNextToken = a})

-- | The maximum number of results to return at one time.
lptMaxResults :: Lens' ListProvisioningTemplates (Maybe Natural)
lptMaxResults = lens _lptMaxResults (\s a -> s {_lptMaxResults = a}) . mapping _Nat

instance AWSPager ListProvisioningTemplates where
  page rq rs
    | stop (rs ^. lptrrsNextToken) = Nothing
    | stop (rs ^. lptrrsTemplates) = Nothing
    | otherwise =
      Just $ rq & lptNextToken .~ rs ^. lptrrsNextToken

instance AWSRequest ListProvisioningTemplates where
  type
    Rs ListProvisioningTemplates =
      ListProvisioningTemplatesResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListProvisioningTemplatesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "templates" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListProvisioningTemplates

instance NFData ListProvisioningTemplates

instance ToHeaders ListProvisioningTemplates where
  toHeaders = const mempty

instance ToPath ListProvisioningTemplates where
  toPath = const "/provisioning-templates"

instance ToQuery ListProvisioningTemplates where
  toQuery ListProvisioningTemplates' {..} =
    mconcat
      [ "nextToken" =: _lptNextToken,
        "maxResults" =: _lptMaxResults
      ]

-- | /See:/ 'listProvisioningTemplatesResponse' smart constructor.
data ListProvisioningTemplatesResponse = ListProvisioningTemplatesResponse'
  { _lptrrsNextToken ::
      !( Maybe
           Text
       ),
    _lptrrsTemplates ::
      !( Maybe
           [ProvisioningTemplateSummary]
       ),
    _lptrrsResponseStatus ::
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

-- | Creates a value of 'ListProvisioningTemplatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lptrrsNextToken' - A token to retrieve the next set of results.
--
-- * 'lptrrsTemplates' - A list of fleet provisioning templates
--
-- * 'lptrrsResponseStatus' - -- | The response status code.
listProvisioningTemplatesResponse ::
  -- | 'lptrrsResponseStatus'
  Int ->
  ListProvisioningTemplatesResponse
listProvisioningTemplatesResponse pResponseStatus_ =
  ListProvisioningTemplatesResponse'
    { _lptrrsNextToken =
        Nothing,
      _lptrrsTemplates = Nothing,
      _lptrrsResponseStatus = pResponseStatus_
    }

-- | A token to retrieve the next set of results.
lptrrsNextToken :: Lens' ListProvisioningTemplatesResponse (Maybe Text)
lptrrsNextToken = lens _lptrrsNextToken (\s a -> s {_lptrrsNextToken = a})

-- | A list of fleet provisioning templates
lptrrsTemplates :: Lens' ListProvisioningTemplatesResponse [ProvisioningTemplateSummary]
lptrrsTemplates = lens _lptrrsTemplates (\s a -> s {_lptrrsTemplates = a}) . _Default . _Coerce

-- | -- | The response status code.
lptrrsResponseStatus :: Lens' ListProvisioningTemplatesResponse Int
lptrrsResponseStatus = lens _lptrrsResponseStatus (\s a -> s {_lptrrsResponseStatus = a})

instance NFData ListProvisioningTemplatesResponse

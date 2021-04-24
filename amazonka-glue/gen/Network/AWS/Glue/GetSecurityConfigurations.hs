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
-- Module      : Network.AWS.Glue.GetSecurityConfigurations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of all security configurations.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Glue.GetSecurityConfigurations
  ( -- * Creating a Request
    getSecurityConfigurations,
    GetSecurityConfigurations,

    -- * Request Lenses
    gscNextToken,
    gscMaxResults,

    -- * Destructuring the Response
    getSecurityConfigurationsResponse,
    GetSecurityConfigurationsResponse,

    -- * Response Lenses
    gscrsrsNextToken,
    gscrsrsSecurityConfigurations,
    gscrsrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSecurityConfigurations' smart constructor.
data GetSecurityConfigurations = GetSecurityConfigurations'
  { _gscNextToken ::
      !(Maybe Text),
    _gscMaxResults ::
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

-- | Creates a value of 'GetSecurityConfigurations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gscNextToken' - A continuation token, if this is a continuation call.
--
-- * 'gscMaxResults' - The maximum number of results to return.
getSecurityConfigurations ::
  GetSecurityConfigurations
getSecurityConfigurations =
  GetSecurityConfigurations'
    { _gscNextToken = Nothing,
      _gscMaxResults = Nothing
    }

-- | A continuation token, if this is a continuation call.
gscNextToken :: Lens' GetSecurityConfigurations (Maybe Text)
gscNextToken = lens _gscNextToken (\s a -> s {_gscNextToken = a})

-- | The maximum number of results to return.
gscMaxResults :: Lens' GetSecurityConfigurations (Maybe Natural)
gscMaxResults = lens _gscMaxResults (\s a -> s {_gscMaxResults = a}) . mapping _Nat

instance AWSPager GetSecurityConfigurations where
  page rq rs
    | stop (rs ^. gscrsrsNextToken) = Nothing
    | stop (rs ^. gscrsrsSecurityConfigurations) =
      Nothing
    | otherwise =
      Just $ rq & gscNextToken .~ rs ^. gscrsrsNextToken

instance AWSRequest GetSecurityConfigurations where
  type
    Rs GetSecurityConfigurations =
      GetSecurityConfigurationsResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetSecurityConfigurationsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "SecurityConfigurations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetSecurityConfigurations

instance NFData GetSecurityConfigurations

instance ToHeaders GetSecurityConfigurations where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetSecurityConfigurations" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetSecurityConfigurations where
  toJSON GetSecurityConfigurations' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gscNextToken,
            ("MaxResults" .=) <$> _gscMaxResults
          ]
      )

instance ToPath GetSecurityConfigurations where
  toPath = const "/"

instance ToQuery GetSecurityConfigurations where
  toQuery = const mempty

-- | /See:/ 'getSecurityConfigurationsResponse' smart constructor.
data GetSecurityConfigurationsResponse = GetSecurityConfigurationsResponse'
  { _gscrsrsNextToken ::
      !( Maybe
           Text
       ),
    _gscrsrsSecurityConfigurations ::
      !( Maybe
           [SecurityConfiguration]
       ),
    _gscrsrsResponseStatus ::
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

-- | Creates a value of 'GetSecurityConfigurationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gscrsrsNextToken' - A continuation token, if there are more security configurations to return.
--
-- * 'gscrsrsSecurityConfigurations' - A list of security configurations.
--
-- * 'gscrsrsResponseStatus' - -- | The response status code.
getSecurityConfigurationsResponse ::
  -- | 'gscrsrsResponseStatus'
  Int ->
  GetSecurityConfigurationsResponse
getSecurityConfigurationsResponse pResponseStatus_ =
  GetSecurityConfigurationsResponse'
    { _gscrsrsNextToken =
        Nothing,
      _gscrsrsSecurityConfigurations = Nothing,
      _gscrsrsResponseStatus =
        pResponseStatus_
    }

-- | A continuation token, if there are more security configurations to return.
gscrsrsNextToken :: Lens' GetSecurityConfigurationsResponse (Maybe Text)
gscrsrsNextToken = lens _gscrsrsNextToken (\s a -> s {_gscrsrsNextToken = a})

-- | A list of security configurations.
gscrsrsSecurityConfigurations :: Lens' GetSecurityConfigurationsResponse [SecurityConfiguration]
gscrsrsSecurityConfigurations = lens _gscrsrsSecurityConfigurations (\s a -> s {_gscrsrsSecurityConfigurations = a}) . _Default . _Coerce

-- | -- | The response status code.
gscrsrsResponseStatus :: Lens' GetSecurityConfigurationsResponse Int
gscrsrsResponseStatus = lens _gscrsrsResponseStatus (\s a -> s {_gscrsrsResponseStatus = a})

instance NFData GetSecurityConfigurationsResponse

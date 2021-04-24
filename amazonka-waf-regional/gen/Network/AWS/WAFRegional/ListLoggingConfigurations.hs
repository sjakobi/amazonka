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
-- Module      : Network.AWS.WAFRegional.ListLoggingConfigurations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of 'LoggingConfiguration' objects.
module Network.AWS.WAFRegional.ListLoggingConfigurations
  ( -- * Creating a Request
    listLoggingConfigurations,
    ListLoggingConfigurations,

    -- * Request Lenses
    llcNextMarker,
    llcLimit,

    -- * Destructuring the Response
    listLoggingConfigurationsResponse,
    ListLoggingConfigurationsResponse,

    -- * Response Lenses
    llcrrsLoggingConfigurations,
    llcrrsNextMarker,
    llcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAFRegional.Types

-- | /See:/ 'listLoggingConfigurations' smart constructor.
data ListLoggingConfigurations = ListLoggingConfigurations'
  { _llcNextMarker ::
      !(Maybe Text),
    _llcLimit ::
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

-- | Creates a value of 'ListLoggingConfigurations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llcNextMarker' - If you specify a value for @Limit@ and you have more @LoggingConfigurations@ than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @LoggingConfigurations@ . For the second and subsequent @ListLoggingConfigurations@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @ListLoggingConfigurations@ .
--
-- * 'llcLimit' - Specifies the number of @LoggingConfigurations@ that you want AWS WAF to return for this request. If you have more @LoggingConfigurations@ than the number that you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @LoggingConfigurations@ .
listLoggingConfigurations ::
  ListLoggingConfigurations
listLoggingConfigurations =
  ListLoggingConfigurations'
    { _llcNextMarker =
        Nothing,
      _llcLimit = Nothing
    }

-- | If you specify a value for @Limit@ and you have more @LoggingConfigurations@ than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @LoggingConfigurations@ . For the second and subsequent @ListLoggingConfigurations@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @ListLoggingConfigurations@ .
llcNextMarker :: Lens' ListLoggingConfigurations (Maybe Text)
llcNextMarker = lens _llcNextMarker (\s a -> s {_llcNextMarker = a})

-- | Specifies the number of @LoggingConfigurations@ that you want AWS WAF to return for this request. If you have more @LoggingConfigurations@ than the number that you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @LoggingConfigurations@ .
llcLimit :: Lens' ListLoggingConfigurations (Maybe Natural)
llcLimit = lens _llcLimit (\s a -> s {_llcLimit = a}) . mapping _Nat

instance AWSRequest ListLoggingConfigurations where
  type
    Rs ListLoggingConfigurations =
      ListLoggingConfigurationsResponse
  request = postJSON wAFRegional
  response =
    receiveJSON
      ( \s h x ->
          ListLoggingConfigurationsResponse'
            <$> (x .?> "LoggingConfigurations" .!@ mempty)
            <*> (x .?> "NextMarker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListLoggingConfigurations

instance NFData ListLoggingConfigurations

instance ToHeaders ListLoggingConfigurations where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_Regional_20161128.ListLoggingConfigurations" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListLoggingConfigurations where
  toJSON ListLoggingConfigurations' {..} =
    object
      ( catMaybes
          [ ("NextMarker" .=) <$> _llcNextMarker,
            ("Limit" .=) <$> _llcLimit
          ]
      )

instance ToPath ListLoggingConfigurations where
  toPath = const "/"

instance ToQuery ListLoggingConfigurations where
  toQuery = const mempty

-- | /See:/ 'listLoggingConfigurationsResponse' smart constructor.
data ListLoggingConfigurationsResponse = ListLoggingConfigurationsResponse'
  { _llcrrsLoggingConfigurations ::
      !( Maybe
           [LoggingConfiguration]
       ),
    _llcrrsNextMarker ::
      !( Maybe
           Text
       ),
    _llcrrsResponseStatus ::
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

-- | Creates a value of 'ListLoggingConfigurationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llcrrsLoggingConfigurations' - An array of 'LoggingConfiguration' objects.
--
-- * 'llcrrsNextMarker' - If you have more @LoggingConfigurations@ than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more @LoggingConfigurations@ , submit another @ListLoggingConfigurations@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
--
-- * 'llcrrsResponseStatus' - -- | The response status code.
listLoggingConfigurationsResponse ::
  -- | 'llcrrsResponseStatus'
  Int ->
  ListLoggingConfigurationsResponse
listLoggingConfigurationsResponse pResponseStatus_ =
  ListLoggingConfigurationsResponse'
    { _llcrrsLoggingConfigurations =
        Nothing,
      _llcrrsNextMarker = Nothing,
      _llcrrsResponseStatus = pResponseStatus_
    }

-- | An array of 'LoggingConfiguration' objects.
llcrrsLoggingConfigurations :: Lens' ListLoggingConfigurationsResponse [LoggingConfiguration]
llcrrsLoggingConfigurations = lens _llcrrsLoggingConfigurations (\s a -> s {_llcrrsLoggingConfigurations = a}) . _Default . _Coerce

-- | If you have more @LoggingConfigurations@ than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more @LoggingConfigurations@ , submit another @ListLoggingConfigurations@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
llcrrsNextMarker :: Lens' ListLoggingConfigurationsResponse (Maybe Text)
llcrrsNextMarker = lens _llcrrsNextMarker (\s a -> s {_llcrrsNextMarker = a})

-- | -- | The response status code.
llcrrsResponseStatus :: Lens' ListLoggingConfigurationsResponse Int
llcrrsResponseStatus = lens _llcrrsResponseStatus (\s a -> s {_llcrrsResponseStatus = a})

instance NFData ListLoggingConfigurationsResponse

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.TemplateVersionsResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.TemplateVersionsResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.TemplateVersionResponse
import Network.AWS.Prelude

-- | Provides information about all the versions of a specific message template.
--
--
--
-- /See:/ 'templateVersionsResponse' smart constructor.
data TemplateVersionsResponse = TemplateVersionsResponse'
  { _tvrNextToken ::
      !(Maybe Text),
    _tvrMessage ::
      !(Maybe Text),
    _tvrRequestId ::
      !(Maybe Text),
    _tvrItem ::
      ![TemplateVersionResponse]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TemplateVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvrNextToken' - The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.
--
-- * 'tvrMessage' - The message that's returned from the API for the request to retrieve information about all the versions of the message template.
--
-- * 'tvrRequestId' - The unique identifier for the request to retrieve information about all the versions of the message template.
--
-- * 'tvrItem' - An array of responses, one for each version of the message template.
templateVersionsResponse ::
  TemplateVersionsResponse
templateVersionsResponse =
  TemplateVersionsResponse'
    { _tvrNextToken = Nothing,
      _tvrMessage = Nothing,
      _tvrRequestId = Nothing,
      _tvrItem = mempty
    }

-- | The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.
tvrNextToken :: Lens' TemplateVersionsResponse (Maybe Text)
tvrNextToken = lens _tvrNextToken (\s a -> s {_tvrNextToken = a})

-- | The message that's returned from the API for the request to retrieve information about all the versions of the message template.
tvrMessage :: Lens' TemplateVersionsResponse (Maybe Text)
tvrMessage = lens _tvrMessage (\s a -> s {_tvrMessage = a})

-- | The unique identifier for the request to retrieve information about all the versions of the message template.
tvrRequestId :: Lens' TemplateVersionsResponse (Maybe Text)
tvrRequestId = lens _tvrRequestId (\s a -> s {_tvrRequestId = a})

-- | An array of responses, one for each version of the message template.
tvrItem :: Lens' TemplateVersionsResponse [TemplateVersionResponse]
tvrItem = lens _tvrItem (\s a -> s {_tvrItem = a}) . _Coerce

instance FromJSON TemplateVersionsResponse where
  parseJSON =
    withObject
      "TemplateVersionsResponse"
      ( \x ->
          TemplateVersionsResponse'
            <$> (x .:? "NextToken")
            <*> (x .:? "Message")
            <*> (x .:? "RequestID")
            <*> (x .:? "Item" .!= mempty)
      )

instance Hashable TemplateVersionsResponse

instance NFData TemplateVersionsResponse

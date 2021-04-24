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
-- Module      : Network.AWS.DirectoryService.DescribeDomainControllers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides information about any domain controllers in your directory.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DirectoryService.DescribeDomainControllers
  ( -- * Creating a Request
    describeDomainControllers,
    DescribeDomainControllers,

    -- * Request Lenses
    ddcNextToken,
    ddcDomainControllerIds,
    ddcLimit,
    ddcDirectoryId,

    -- * Destructuring the Response
    describeDomainControllersResponse,
    DescribeDomainControllersResponse,

    -- * Response Lenses
    ddcrrsDomainControllers,
    ddcrrsNextToken,
    ddcrrsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeDomainControllers' smart constructor.
data DescribeDomainControllers = DescribeDomainControllers'
  { _ddcNextToken ::
      !(Maybe Text),
    _ddcDomainControllerIds ::
      !(Maybe [Text]),
    _ddcLimit ::
      !(Maybe Nat),
    _ddcDirectoryId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeDomainControllers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcNextToken' - The /DescribeDomainControllers.NextToken/ value from a previous call to 'DescribeDomainControllers' . Pass null if this is the first call.
--
-- * 'ddcDomainControllerIds' - A list of identifiers for the domain controllers whose information will be provided.
--
-- * 'ddcLimit' - The maximum number of items to return.
--
-- * 'ddcDirectoryId' - Identifier of the directory for which to retrieve the domain controller information.
describeDomainControllers ::
  -- | 'ddcDirectoryId'
  Text ->
  DescribeDomainControllers
describeDomainControllers pDirectoryId_ =
  DescribeDomainControllers'
    { _ddcNextToken = Nothing,
      _ddcDomainControllerIds = Nothing,
      _ddcLimit = Nothing,
      _ddcDirectoryId = pDirectoryId_
    }

-- | The /DescribeDomainControllers.NextToken/ value from a previous call to 'DescribeDomainControllers' . Pass null if this is the first call.
ddcNextToken :: Lens' DescribeDomainControllers (Maybe Text)
ddcNextToken = lens _ddcNextToken (\s a -> s {_ddcNextToken = a})

-- | A list of identifiers for the domain controllers whose information will be provided.
ddcDomainControllerIds :: Lens' DescribeDomainControllers [Text]
ddcDomainControllerIds = lens _ddcDomainControllerIds (\s a -> s {_ddcDomainControllerIds = a}) . _Default . _Coerce

-- | The maximum number of items to return.
ddcLimit :: Lens' DescribeDomainControllers (Maybe Natural)
ddcLimit = lens _ddcLimit (\s a -> s {_ddcLimit = a}) . mapping _Nat

-- | Identifier of the directory for which to retrieve the domain controller information.
ddcDirectoryId :: Lens' DescribeDomainControllers Text
ddcDirectoryId = lens _ddcDirectoryId (\s a -> s {_ddcDirectoryId = a})

instance AWSPager DescribeDomainControllers where
  page rq rs
    | stop (rs ^. ddcrrsNextToken) = Nothing
    | stop (rs ^. ddcrrsDomainControllers) = Nothing
    | otherwise =
      Just $ rq & ddcNextToken .~ rs ^. ddcrrsNextToken

instance AWSRequest DescribeDomainControllers where
  type
    Rs DescribeDomainControllers =
      DescribeDomainControllersResponse
  request = postJSON directoryService
  response =
    receiveJSON
      ( \s h x ->
          DescribeDomainControllersResponse'
            <$> (x .?> "DomainControllers" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDomainControllers

instance NFData DescribeDomainControllers

instance ToHeaders DescribeDomainControllers where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.DescribeDomainControllers" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeDomainControllers where
  toJSON DescribeDomainControllers' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ddcNextToken,
            ("DomainControllerIds" .=)
              <$> _ddcDomainControllerIds,
            ("Limit" .=) <$> _ddcLimit,
            Just ("DirectoryId" .= _ddcDirectoryId)
          ]
      )

instance ToPath DescribeDomainControllers where
  toPath = const "/"

instance ToQuery DescribeDomainControllers where
  toQuery = const mempty

-- | /See:/ 'describeDomainControllersResponse' smart constructor.
data DescribeDomainControllersResponse = DescribeDomainControllersResponse'
  { _ddcrrsDomainControllers ::
      !( Maybe
           [DomainController]
       ),
    _ddcrrsNextToken ::
      !( Maybe
           Text
       ),
    _ddcrrsResponseStatus ::
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

-- | Creates a value of 'DescribeDomainControllersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcrrsDomainControllers' - List of the 'DomainController' objects that were retrieved.
--
-- * 'ddcrrsNextToken' - If not null, more results are available. Pass this value for the @NextToken@ parameter in a subsequent call to 'DescribeDomainControllers' retrieve the next set of items.
--
-- * 'ddcrrsResponseStatus' - -- | The response status code.
describeDomainControllersResponse ::
  -- | 'ddcrrsResponseStatus'
  Int ->
  DescribeDomainControllersResponse
describeDomainControllersResponse pResponseStatus_ =
  DescribeDomainControllersResponse'
    { _ddcrrsDomainControllers =
        Nothing,
      _ddcrrsNextToken = Nothing,
      _ddcrrsResponseStatus = pResponseStatus_
    }

-- | List of the 'DomainController' objects that were retrieved.
ddcrrsDomainControllers :: Lens' DescribeDomainControllersResponse [DomainController]
ddcrrsDomainControllers = lens _ddcrrsDomainControllers (\s a -> s {_ddcrrsDomainControllers = a}) . _Default . _Coerce

-- | If not null, more results are available. Pass this value for the @NextToken@ parameter in a subsequent call to 'DescribeDomainControllers' retrieve the next set of items.
ddcrrsNextToken :: Lens' DescribeDomainControllersResponse (Maybe Text)
ddcrrsNextToken = lens _ddcrrsNextToken (\s a -> s {_ddcrrsNextToken = a})

-- | -- | The response status code.
ddcrrsResponseStatus :: Lens' DescribeDomainControllersResponse Int
ddcrrsResponseStatus = lens _ddcrrsResponseStatus (\s a -> s {_ddcrrsResponseStatus = a})

instance NFData DescribeDomainControllersResponse

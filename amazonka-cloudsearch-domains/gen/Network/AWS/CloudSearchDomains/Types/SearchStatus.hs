{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearchDomains.Types.SearchStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearchDomains.Types.SearchStatus where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the resource id (@rid@ ) and the time it took to process the request (@timems@ ).
--
--
--
-- /See:/ 'searchStatus' smart constructor.
data SearchStatus = SearchStatus'
  { _ssTimems ::
      !(Maybe Integer),
    _ssRid :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SearchStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssTimems' - How long it took to process the request, in milliseconds.
--
-- * 'ssRid' - The encrypted resource ID for the request.
searchStatus ::
  SearchStatus
searchStatus =
  SearchStatus'
    { _ssTimems = Nothing,
      _ssRid = Nothing
    }

-- | How long it took to process the request, in milliseconds.
ssTimems :: Lens' SearchStatus (Maybe Integer)
ssTimems = lens _ssTimems (\s a -> s {_ssTimems = a})

-- | The encrypted resource ID for the request.
ssRid :: Lens' SearchStatus (Maybe Text)
ssRid = lens _ssRid (\s a -> s {_ssRid = a})

instance FromJSON SearchStatus where
  parseJSON =
    withObject
      "SearchStatus"
      ( \x ->
          SearchStatus' <$> (x .:? "timems") <*> (x .:? "rid")
      )

instance Hashable SearchStatus

instance NFData SearchStatus

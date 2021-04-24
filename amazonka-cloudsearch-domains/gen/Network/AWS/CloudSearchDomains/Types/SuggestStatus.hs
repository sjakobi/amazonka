{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearchDomains.Types.SuggestStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearchDomains.Types.SuggestStatus where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the resource id (@rid@ ) and the time it took to process the request (@timems@ ).
--
--
--
-- /See:/ 'suggestStatus' smart constructor.
data SuggestStatus = SuggestStatus'
  { _sTimems ::
      !(Maybe Integer),
    _sRid :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SuggestStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sTimems' - How long it took to process the request, in milliseconds.
--
-- * 'sRid' - The encrypted resource ID for the request.
suggestStatus ::
  SuggestStatus
suggestStatus =
  SuggestStatus' {_sTimems = Nothing, _sRid = Nothing}

-- | How long it took to process the request, in milliseconds.
sTimems :: Lens' SuggestStatus (Maybe Integer)
sTimems = lens _sTimems (\s a -> s {_sTimems = a})

-- | The encrypted resource ID for the request.
sRid :: Lens' SuggestStatus (Maybe Text)
sRid = lens _sRid (\s a -> s {_sRid = a})

instance FromJSON SuggestStatus where
  parseJSON =
    withObject
      "SuggestStatus"
      ( \x ->
          SuggestStatus'
            <$> (x .:? "timems") <*> (x .:? "rid")
      )

instance Hashable SuggestStatus

instance NFData SuggestStatus

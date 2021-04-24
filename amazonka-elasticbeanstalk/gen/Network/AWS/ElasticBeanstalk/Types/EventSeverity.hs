{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.EventSeverity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.EventSeverity
  ( EventSeverity
      ( ..,
        LevelDebug,
        LevelError',
        LevelFatal,
        LevelInfo,
        LevelTrace,
        LevelWarn
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EventSeverity = EventSeverity' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern LevelDebug :: EventSeverity
pattern LevelDebug = EventSeverity' "DEBUG"

pattern LevelError' :: EventSeverity
pattern LevelError' = EventSeverity' "ERROR"

pattern LevelFatal :: EventSeverity
pattern LevelFatal = EventSeverity' "FATAL"

pattern LevelInfo :: EventSeverity
pattern LevelInfo = EventSeverity' "INFO"

pattern LevelTrace :: EventSeverity
pattern LevelTrace = EventSeverity' "TRACE"

pattern LevelWarn :: EventSeverity
pattern LevelWarn = EventSeverity' "WARN"

{-# COMPLETE
  LevelDebug,
  LevelError',
  LevelFatal,
  LevelInfo,
  LevelTrace,
  LevelWarn,
  EventSeverity'
  #-}

instance FromText EventSeverity where
  parser = (EventSeverity' . mk) <$> takeText

instance ToText EventSeverity where
  toText (EventSeverity' ci) = original ci

instance Hashable EventSeverity

instance NFData EventSeverity

instance ToByteString EventSeverity

instance ToQuery EventSeverity

instance ToHeader EventSeverity

instance FromXML EventSeverity where
  parseXML = parseXMLText "EventSeverity"

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        EventSeverityLevelDEBUG,
        EventSeverityLevelERROR,
        EventSeverityLevelFATAL,
        EventSeverityLevelINFO,
        EventSeverityLevelTRACE,
        EventSeverityLevelWARN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EventSeverity = EventSeverity'
  { fromEventSeverity ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern EventSeverityLevelDEBUG :: EventSeverity
pattern EventSeverityLevelDEBUG = EventSeverity' "DEBUG"

pattern EventSeverityLevelERROR :: EventSeverity
pattern EventSeverityLevelERROR = EventSeverity' "ERROR"

pattern EventSeverityLevelFATAL :: EventSeverity
pattern EventSeverityLevelFATAL = EventSeverity' "FATAL"

pattern EventSeverityLevelINFO :: EventSeverity
pattern EventSeverityLevelINFO = EventSeverity' "INFO"

pattern EventSeverityLevelTRACE :: EventSeverity
pattern EventSeverityLevelTRACE = EventSeverity' "TRACE"

pattern EventSeverityLevelWARN :: EventSeverity
pattern EventSeverityLevelWARN = EventSeverity' "WARN"

{-# COMPLETE
  EventSeverityLevelDEBUG,
  EventSeverityLevelERROR,
  EventSeverityLevelFATAL,
  EventSeverityLevelINFO,
  EventSeverityLevelTRACE,
  EventSeverityLevelWARN,
  EventSeverity'
  #-}

instance Prelude.FromText EventSeverity where
  parser = EventSeverity' Prelude.<$> Prelude.takeText

instance Prelude.ToText EventSeverity where
  toText (EventSeverity' x) = x

instance Prelude.Hashable EventSeverity

instance Prelude.NFData EventSeverity

instance Prelude.ToByteString EventSeverity

instance Prelude.ToQuery EventSeverity

instance Prelude.ToHeader EventSeverity

instance Prelude.FromXML EventSeverity where
  parseXML = Prelude.parseXMLText "EventSeverity"

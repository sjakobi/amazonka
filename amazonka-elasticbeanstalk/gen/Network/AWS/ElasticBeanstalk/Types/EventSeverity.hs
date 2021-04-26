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
        EventSeverityDEBUG,
        EventSeverityERROR,
        EventSeverityFATAL,
        EventSeverityINFO,
        EventSeverityTRACE,
        EventSeverityWARN
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

pattern EventSeverityDEBUG :: EventSeverity
pattern EventSeverityDEBUG = EventSeverity' "DEBUG"

pattern EventSeverityERROR :: EventSeverity
pattern EventSeverityERROR = EventSeverity' "ERROR"

pattern EventSeverityFATAL :: EventSeverity
pattern EventSeverityFATAL = EventSeverity' "FATAL"

pattern EventSeverityINFO :: EventSeverity
pattern EventSeverityINFO = EventSeverity' "INFO"

pattern EventSeverityTRACE :: EventSeverity
pattern EventSeverityTRACE = EventSeverity' "TRACE"

pattern EventSeverityWARN :: EventSeverity
pattern EventSeverityWARN = EventSeverity' "WARN"

{-# COMPLETE
  EventSeverityDEBUG,
  EventSeverityERROR,
  EventSeverityFATAL,
  EventSeverityINFO,
  EventSeverityTRACE,
  EventSeverityWARN,
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

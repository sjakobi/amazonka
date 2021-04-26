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
-- Module      : Network.AWS.Connect.Types.InstanceStorageResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.InstanceStorageResourceType
  ( InstanceStorageResourceType
      ( ..,
        InstanceStorageResourceTypeAGENTEVENTS,
        InstanceStorageResourceTypeCALLRECORDINGS,
        InstanceStorageResourceTypeCHATTRANSCRIPTS,
        InstanceStorageResourceTypeCONTACTTRACERECORDS,
        InstanceStorageResourceTypeMEDIASTREAMS,
        InstanceStorageResourceTypeSCHEDULEDREPORTS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceStorageResourceType = InstanceStorageResourceType'
  { fromInstanceStorageResourceType ::
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

pattern InstanceStorageResourceTypeAGENTEVENTS :: InstanceStorageResourceType
pattern InstanceStorageResourceTypeAGENTEVENTS = InstanceStorageResourceType' "AGENT_EVENTS"

pattern InstanceStorageResourceTypeCALLRECORDINGS :: InstanceStorageResourceType
pattern InstanceStorageResourceTypeCALLRECORDINGS = InstanceStorageResourceType' "CALL_RECORDINGS"

pattern InstanceStorageResourceTypeCHATTRANSCRIPTS :: InstanceStorageResourceType
pattern InstanceStorageResourceTypeCHATTRANSCRIPTS = InstanceStorageResourceType' "CHAT_TRANSCRIPTS"

pattern InstanceStorageResourceTypeCONTACTTRACERECORDS :: InstanceStorageResourceType
pattern InstanceStorageResourceTypeCONTACTTRACERECORDS = InstanceStorageResourceType' "CONTACT_TRACE_RECORDS"

pattern InstanceStorageResourceTypeMEDIASTREAMS :: InstanceStorageResourceType
pattern InstanceStorageResourceTypeMEDIASTREAMS = InstanceStorageResourceType' "MEDIA_STREAMS"

pattern InstanceStorageResourceTypeSCHEDULEDREPORTS :: InstanceStorageResourceType
pattern InstanceStorageResourceTypeSCHEDULEDREPORTS = InstanceStorageResourceType' "SCHEDULED_REPORTS"

{-# COMPLETE
  InstanceStorageResourceTypeAGENTEVENTS,
  InstanceStorageResourceTypeCALLRECORDINGS,
  InstanceStorageResourceTypeCHATTRANSCRIPTS,
  InstanceStorageResourceTypeCONTACTTRACERECORDS,
  InstanceStorageResourceTypeMEDIASTREAMS,
  InstanceStorageResourceTypeSCHEDULEDREPORTS,
  InstanceStorageResourceType'
  #-}

instance Prelude.FromText InstanceStorageResourceType where
  parser = InstanceStorageResourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceStorageResourceType where
  toText (InstanceStorageResourceType' x) = x

instance Prelude.Hashable InstanceStorageResourceType

instance Prelude.NFData InstanceStorageResourceType

instance Prelude.ToByteString InstanceStorageResourceType

instance Prelude.ToQuery InstanceStorageResourceType

instance Prelude.ToHeader InstanceStorageResourceType

instance Prelude.ToJSON InstanceStorageResourceType where
  toJSON = Prelude.toJSONText

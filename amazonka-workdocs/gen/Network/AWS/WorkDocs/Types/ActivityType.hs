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
-- Module      : Network.AWS.WorkDocs.Types.ActivityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.ActivityType
  ( ActivityType
      ( ..,
        ActivityTypeDOCUMENTANNOTATIONADDED,
        ActivityTypeDOCUMENTANNOTATIONDELETED,
        ActivityTypeDOCUMENTCHECKEDIN,
        ActivityTypeDOCUMENTCHECKEDOUT,
        ActivityTypeDOCUMENTCOMMENTADDED,
        ActivityTypeDOCUMENTCOMMENTDELETED,
        ActivityTypeDOCUMENTMOVED,
        ActivityTypeDOCUMENTRECYCLED,
        ActivityTypeDOCUMENTRENAMED,
        ActivityTypeDOCUMENTRESTORED,
        ActivityTypeDOCUMENTREVERTED,
        ActivityTypeDOCUMENTSHAREABLELINKCREATED,
        ActivityTypeDOCUMENTSHAREABLELINKPERMISSIONCHANGED,
        ActivityTypeDOCUMENTSHAREABLELINKREMOVED,
        ActivityTypeDOCUMENTSHARED,
        ActivityTypeDOCUMENTSHAREPERMISSIONCHANGED,
        ActivityTypeDOCUMENTUNSHARED,
        ActivityTypeDOCUMENTVERSIONDELETED,
        ActivityTypeDOCUMENTVERSIONDOWNLOADED,
        ActivityTypeDOCUMENTVERSIONUPLOADED,
        ActivityTypeDOCUMENTVERSIONVIEWED,
        ActivityTypeFOLDERCREATED,
        ActivityTypeFOLDERDELETED,
        ActivityTypeFOLDERMOVED,
        ActivityTypeFOLDERRECYCLED,
        ActivityTypeFOLDERRENAMED,
        ActivityTypeFOLDERRESTORED,
        ActivityTypeFOLDERSHAREABLELINKCREATED,
        ActivityTypeFOLDERSHAREABLELINKPERMISSIONCHANGED,
        ActivityTypeFOLDERSHAREABLELINKREMOVED,
        ActivityTypeFOLDERSHARED,
        ActivityTypeFOLDERSHAREPERMISSIONCHANGED,
        ActivityTypeFOLDERUNSHARED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ActivityType = ActivityType'
  { fromActivityType ::
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

pattern ActivityTypeDOCUMENTANNOTATIONADDED :: ActivityType
pattern ActivityTypeDOCUMENTANNOTATIONADDED = ActivityType' "DOCUMENT_ANNOTATION_ADDED"

pattern ActivityTypeDOCUMENTANNOTATIONDELETED :: ActivityType
pattern ActivityTypeDOCUMENTANNOTATIONDELETED = ActivityType' "DOCUMENT_ANNOTATION_DELETED"

pattern ActivityTypeDOCUMENTCHECKEDIN :: ActivityType
pattern ActivityTypeDOCUMENTCHECKEDIN = ActivityType' "DOCUMENT_CHECKED_IN"

pattern ActivityTypeDOCUMENTCHECKEDOUT :: ActivityType
pattern ActivityTypeDOCUMENTCHECKEDOUT = ActivityType' "DOCUMENT_CHECKED_OUT"

pattern ActivityTypeDOCUMENTCOMMENTADDED :: ActivityType
pattern ActivityTypeDOCUMENTCOMMENTADDED = ActivityType' "DOCUMENT_COMMENT_ADDED"

pattern ActivityTypeDOCUMENTCOMMENTDELETED :: ActivityType
pattern ActivityTypeDOCUMENTCOMMENTDELETED = ActivityType' "DOCUMENT_COMMENT_DELETED"

pattern ActivityTypeDOCUMENTMOVED :: ActivityType
pattern ActivityTypeDOCUMENTMOVED = ActivityType' "DOCUMENT_MOVED"

pattern ActivityTypeDOCUMENTRECYCLED :: ActivityType
pattern ActivityTypeDOCUMENTRECYCLED = ActivityType' "DOCUMENT_RECYCLED"

pattern ActivityTypeDOCUMENTRENAMED :: ActivityType
pattern ActivityTypeDOCUMENTRENAMED = ActivityType' "DOCUMENT_RENAMED"

pattern ActivityTypeDOCUMENTRESTORED :: ActivityType
pattern ActivityTypeDOCUMENTRESTORED = ActivityType' "DOCUMENT_RESTORED"

pattern ActivityTypeDOCUMENTREVERTED :: ActivityType
pattern ActivityTypeDOCUMENTREVERTED = ActivityType' "DOCUMENT_REVERTED"

pattern ActivityTypeDOCUMENTSHAREABLELINKCREATED :: ActivityType
pattern ActivityTypeDOCUMENTSHAREABLELINKCREATED = ActivityType' "DOCUMENT_SHAREABLE_LINK_CREATED"

pattern ActivityTypeDOCUMENTSHAREABLELINKPERMISSIONCHANGED :: ActivityType
pattern ActivityTypeDOCUMENTSHAREABLELINKPERMISSIONCHANGED = ActivityType' "DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED"

pattern ActivityTypeDOCUMENTSHAREABLELINKREMOVED :: ActivityType
pattern ActivityTypeDOCUMENTSHAREABLELINKREMOVED = ActivityType' "DOCUMENT_SHAREABLE_LINK_REMOVED"

pattern ActivityTypeDOCUMENTSHARED :: ActivityType
pattern ActivityTypeDOCUMENTSHARED = ActivityType' "DOCUMENT_SHARED"

pattern ActivityTypeDOCUMENTSHAREPERMISSIONCHANGED :: ActivityType
pattern ActivityTypeDOCUMENTSHAREPERMISSIONCHANGED = ActivityType' "DOCUMENT_SHARE_PERMISSION_CHANGED"

pattern ActivityTypeDOCUMENTUNSHARED :: ActivityType
pattern ActivityTypeDOCUMENTUNSHARED = ActivityType' "DOCUMENT_UNSHARED"

pattern ActivityTypeDOCUMENTVERSIONDELETED :: ActivityType
pattern ActivityTypeDOCUMENTVERSIONDELETED = ActivityType' "DOCUMENT_VERSION_DELETED"

pattern ActivityTypeDOCUMENTVERSIONDOWNLOADED :: ActivityType
pattern ActivityTypeDOCUMENTVERSIONDOWNLOADED = ActivityType' "DOCUMENT_VERSION_DOWNLOADED"

pattern ActivityTypeDOCUMENTVERSIONUPLOADED :: ActivityType
pattern ActivityTypeDOCUMENTVERSIONUPLOADED = ActivityType' "DOCUMENT_VERSION_UPLOADED"

pattern ActivityTypeDOCUMENTVERSIONVIEWED :: ActivityType
pattern ActivityTypeDOCUMENTVERSIONVIEWED = ActivityType' "DOCUMENT_VERSION_VIEWED"

pattern ActivityTypeFOLDERCREATED :: ActivityType
pattern ActivityTypeFOLDERCREATED = ActivityType' "FOLDER_CREATED"

pattern ActivityTypeFOLDERDELETED :: ActivityType
pattern ActivityTypeFOLDERDELETED = ActivityType' "FOLDER_DELETED"

pattern ActivityTypeFOLDERMOVED :: ActivityType
pattern ActivityTypeFOLDERMOVED = ActivityType' "FOLDER_MOVED"

pattern ActivityTypeFOLDERRECYCLED :: ActivityType
pattern ActivityTypeFOLDERRECYCLED = ActivityType' "FOLDER_RECYCLED"

pattern ActivityTypeFOLDERRENAMED :: ActivityType
pattern ActivityTypeFOLDERRENAMED = ActivityType' "FOLDER_RENAMED"

pattern ActivityTypeFOLDERRESTORED :: ActivityType
pattern ActivityTypeFOLDERRESTORED = ActivityType' "FOLDER_RESTORED"

pattern ActivityTypeFOLDERSHAREABLELINKCREATED :: ActivityType
pattern ActivityTypeFOLDERSHAREABLELINKCREATED = ActivityType' "FOLDER_SHAREABLE_LINK_CREATED"

pattern ActivityTypeFOLDERSHAREABLELINKPERMISSIONCHANGED :: ActivityType
pattern ActivityTypeFOLDERSHAREABLELINKPERMISSIONCHANGED = ActivityType' "FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED"

pattern ActivityTypeFOLDERSHAREABLELINKREMOVED :: ActivityType
pattern ActivityTypeFOLDERSHAREABLELINKREMOVED = ActivityType' "FOLDER_SHAREABLE_LINK_REMOVED"

pattern ActivityTypeFOLDERSHARED :: ActivityType
pattern ActivityTypeFOLDERSHARED = ActivityType' "FOLDER_SHARED"

pattern ActivityTypeFOLDERSHAREPERMISSIONCHANGED :: ActivityType
pattern ActivityTypeFOLDERSHAREPERMISSIONCHANGED = ActivityType' "FOLDER_SHARE_PERMISSION_CHANGED"

pattern ActivityTypeFOLDERUNSHARED :: ActivityType
pattern ActivityTypeFOLDERUNSHARED = ActivityType' "FOLDER_UNSHARED"

{-# COMPLETE
  ActivityTypeDOCUMENTANNOTATIONADDED,
  ActivityTypeDOCUMENTANNOTATIONDELETED,
  ActivityTypeDOCUMENTCHECKEDIN,
  ActivityTypeDOCUMENTCHECKEDOUT,
  ActivityTypeDOCUMENTCOMMENTADDED,
  ActivityTypeDOCUMENTCOMMENTDELETED,
  ActivityTypeDOCUMENTMOVED,
  ActivityTypeDOCUMENTRECYCLED,
  ActivityTypeDOCUMENTRENAMED,
  ActivityTypeDOCUMENTRESTORED,
  ActivityTypeDOCUMENTREVERTED,
  ActivityTypeDOCUMENTSHAREABLELINKCREATED,
  ActivityTypeDOCUMENTSHAREABLELINKPERMISSIONCHANGED,
  ActivityTypeDOCUMENTSHAREABLELINKREMOVED,
  ActivityTypeDOCUMENTSHARED,
  ActivityTypeDOCUMENTSHAREPERMISSIONCHANGED,
  ActivityTypeDOCUMENTUNSHARED,
  ActivityTypeDOCUMENTVERSIONDELETED,
  ActivityTypeDOCUMENTVERSIONDOWNLOADED,
  ActivityTypeDOCUMENTVERSIONUPLOADED,
  ActivityTypeDOCUMENTVERSIONVIEWED,
  ActivityTypeFOLDERCREATED,
  ActivityTypeFOLDERDELETED,
  ActivityTypeFOLDERMOVED,
  ActivityTypeFOLDERRECYCLED,
  ActivityTypeFOLDERRENAMED,
  ActivityTypeFOLDERRESTORED,
  ActivityTypeFOLDERSHAREABLELINKCREATED,
  ActivityTypeFOLDERSHAREABLELINKPERMISSIONCHANGED,
  ActivityTypeFOLDERSHAREABLELINKREMOVED,
  ActivityTypeFOLDERSHARED,
  ActivityTypeFOLDERSHAREPERMISSIONCHANGED,
  ActivityTypeFOLDERUNSHARED,
  ActivityType'
  #-}

instance Prelude.FromText ActivityType where
  parser = ActivityType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ActivityType where
  toText (ActivityType' x) = x

instance Prelude.Hashable ActivityType

instance Prelude.NFData ActivityType

instance Prelude.ToByteString ActivityType

instance Prelude.ToQuery ActivityType

instance Prelude.ToHeader ActivityType

instance Prelude.FromJSON ActivityType where
  parseJSON = Prelude.parseJSONText "ActivityType"

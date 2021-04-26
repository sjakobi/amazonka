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
-- Module      : Network.AWS.MediaPackage.Types.AdTriggersElement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.AdTriggersElement
  ( AdTriggersElement
      ( ..,
        AdTriggersElementBREAK,
        AdTriggersElementDISTRIBUTORADVERTISEMENT,
        AdTriggersElementDISTRIBUTOROVERLAYPLACEMENTOPPORTUNITY,
        AdTriggersElementDISTRIBUTORPLACEMENTOPPORTUNITY,
        AdTriggersElementPROVIDERADVERTISEMENT,
        AdTriggersElementPROVIDEROVERLAYPLACEMENTOPPORTUNITY,
        AdTriggersElementPROVIDERPLACEMENTOPPORTUNITY,
        AdTriggersElementSPLICEINSERT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AdTriggersElement = AdTriggersElement'
  { fromAdTriggersElement ::
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

pattern AdTriggersElementBREAK :: AdTriggersElement
pattern AdTriggersElementBREAK = AdTriggersElement' "BREAK"

pattern AdTriggersElementDISTRIBUTORADVERTISEMENT :: AdTriggersElement
pattern AdTriggersElementDISTRIBUTORADVERTISEMENT = AdTriggersElement' "DISTRIBUTOR_ADVERTISEMENT"

pattern AdTriggersElementDISTRIBUTOROVERLAYPLACEMENTOPPORTUNITY :: AdTriggersElement
pattern AdTriggersElementDISTRIBUTOROVERLAYPLACEMENTOPPORTUNITY = AdTriggersElement' "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"

pattern AdTriggersElementDISTRIBUTORPLACEMENTOPPORTUNITY :: AdTriggersElement
pattern AdTriggersElementDISTRIBUTORPLACEMENTOPPORTUNITY = AdTriggersElement' "DISTRIBUTOR_PLACEMENT_OPPORTUNITY"

pattern AdTriggersElementPROVIDERADVERTISEMENT :: AdTriggersElement
pattern AdTriggersElementPROVIDERADVERTISEMENT = AdTriggersElement' "PROVIDER_ADVERTISEMENT"

pattern AdTriggersElementPROVIDEROVERLAYPLACEMENTOPPORTUNITY :: AdTriggersElement
pattern AdTriggersElementPROVIDEROVERLAYPLACEMENTOPPORTUNITY = AdTriggersElement' "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY"

pattern AdTriggersElementPROVIDERPLACEMENTOPPORTUNITY :: AdTriggersElement
pattern AdTriggersElementPROVIDERPLACEMENTOPPORTUNITY = AdTriggersElement' "PROVIDER_PLACEMENT_OPPORTUNITY"

pattern AdTriggersElementSPLICEINSERT :: AdTriggersElement
pattern AdTriggersElementSPLICEINSERT = AdTriggersElement' "SPLICE_INSERT"

{-# COMPLETE
  AdTriggersElementBREAK,
  AdTriggersElementDISTRIBUTORADVERTISEMENT,
  AdTriggersElementDISTRIBUTOROVERLAYPLACEMENTOPPORTUNITY,
  AdTriggersElementDISTRIBUTORPLACEMENTOPPORTUNITY,
  AdTriggersElementPROVIDERADVERTISEMENT,
  AdTriggersElementPROVIDEROVERLAYPLACEMENTOPPORTUNITY,
  AdTriggersElementPROVIDERPLACEMENTOPPORTUNITY,
  AdTriggersElementSPLICEINSERT,
  AdTriggersElement'
  #-}

instance Prelude.FromText AdTriggersElement where
  parser = AdTriggersElement' Prelude.<$> Prelude.takeText

instance Prelude.ToText AdTriggersElement where
  toText (AdTriggersElement' x) = x

instance Prelude.Hashable AdTriggersElement

instance Prelude.NFData AdTriggersElement

instance Prelude.ToByteString AdTriggersElement

instance Prelude.ToQuery AdTriggersElement

instance Prelude.ToHeader AdTriggersElement

instance Prelude.ToJSON AdTriggersElement where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AdTriggersElement where
  parseJSON = Prelude.parseJSONText "AdTriggersElement"

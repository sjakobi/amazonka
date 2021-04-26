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
-- Module      : Network.AWS.Transcribe.Types.OutputLocationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.OutputLocationType
  ( OutputLocationType
      ( ..,
        OutputLocationTypeCUSTOMERBUCKET,
        OutputLocationTypeSERVICEBUCKET
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OutputLocationType = OutputLocationType'
  { fromOutputLocationType ::
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

pattern OutputLocationTypeCUSTOMERBUCKET :: OutputLocationType
pattern OutputLocationTypeCUSTOMERBUCKET = OutputLocationType' "CUSTOMER_BUCKET"

pattern OutputLocationTypeSERVICEBUCKET :: OutputLocationType
pattern OutputLocationTypeSERVICEBUCKET = OutputLocationType' "SERVICE_BUCKET"

{-# COMPLETE
  OutputLocationTypeCUSTOMERBUCKET,
  OutputLocationTypeSERVICEBUCKET,
  OutputLocationType'
  #-}

instance Prelude.FromText OutputLocationType where
  parser = OutputLocationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText OutputLocationType where
  toText (OutputLocationType' x) = x

instance Prelude.Hashable OutputLocationType

instance Prelude.NFData OutputLocationType

instance Prelude.ToByteString OutputLocationType

instance Prelude.ToQuery OutputLocationType

instance Prelude.ToHeader OutputLocationType

instance Prelude.FromJSON OutputLocationType where
  parseJSON = Prelude.parseJSONText "OutputLocationType"

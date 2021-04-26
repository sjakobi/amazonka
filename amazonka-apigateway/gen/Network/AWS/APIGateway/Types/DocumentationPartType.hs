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
-- Module      : Network.AWS.APIGateway.Types.DocumentationPartType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.DocumentationPartType
  ( DocumentationPartType
      ( ..,
        DocumentationPartTypeAPI,
        DocumentationPartTypeAUTHORIZER,
        DocumentationPartTypeMETHOD,
        DocumentationPartTypeMODEL,
        DocumentationPartTypePATHPARAMETER,
        DocumentationPartTypeQUERYPARAMETER,
        DocumentationPartTypeREQUESTBODY,
        DocumentationPartTypeREQUESTHEADER,
        DocumentationPartTypeRESOURCE,
        DocumentationPartTypeRESPONSE,
        DocumentationPartTypeRESPONSEBODY,
        DocumentationPartTypeRESPONSEHEADER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DocumentationPartType = DocumentationPartType'
  { fromDocumentationPartType ::
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

pattern DocumentationPartTypeAPI :: DocumentationPartType
pattern DocumentationPartTypeAPI = DocumentationPartType' "API"

pattern DocumentationPartTypeAUTHORIZER :: DocumentationPartType
pattern DocumentationPartTypeAUTHORIZER = DocumentationPartType' "AUTHORIZER"

pattern DocumentationPartTypeMETHOD :: DocumentationPartType
pattern DocumentationPartTypeMETHOD = DocumentationPartType' "METHOD"

pattern DocumentationPartTypeMODEL :: DocumentationPartType
pattern DocumentationPartTypeMODEL = DocumentationPartType' "MODEL"

pattern DocumentationPartTypePATHPARAMETER :: DocumentationPartType
pattern DocumentationPartTypePATHPARAMETER = DocumentationPartType' "PATH_PARAMETER"

pattern DocumentationPartTypeQUERYPARAMETER :: DocumentationPartType
pattern DocumentationPartTypeQUERYPARAMETER = DocumentationPartType' "QUERY_PARAMETER"

pattern DocumentationPartTypeREQUESTBODY :: DocumentationPartType
pattern DocumentationPartTypeREQUESTBODY = DocumentationPartType' "REQUEST_BODY"

pattern DocumentationPartTypeREQUESTHEADER :: DocumentationPartType
pattern DocumentationPartTypeREQUESTHEADER = DocumentationPartType' "REQUEST_HEADER"

pattern DocumentationPartTypeRESOURCE :: DocumentationPartType
pattern DocumentationPartTypeRESOURCE = DocumentationPartType' "RESOURCE"

pattern DocumentationPartTypeRESPONSE :: DocumentationPartType
pattern DocumentationPartTypeRESPONSE = DocumentationPartType' "RESPONSE"

pattern DocumentationPartTypeRESPONSEBODY :: DocumentationPartType
pattern DocumentationPartTypeRESPONSEBODY = DocumentationPartType' "RESPONSE_BODY"

pattern DocumentationPartTypeRESPONSEHEADER :: DocumentationPartType
pattern DocumentationPartTypeRESPONSEHEADER = DocumentationPartType' "RESPONSE_HEADER"

{-# COMPLETE
  DocumentationPartTypeAPI,
  DocumentationPartTypeAUTHORIZER,
  DocumentationPartTypeMETHOD,
  DocumentationPartTypeMODEL,
  DocumentationPartTypePATHPARAMETER,
  DocumentationPartTypeQUERYPARAMETER,
  DocumentationPartTypeREQUESTBODY,
  DocumentationPartTypeREQUESTHEADER,
  DocumentationPartTypeRESOURCE,
  DocumentationPartTypeRESPONSE,
  DocumentationPartTypeRESPONSEBODY,
  DocumentationPartTypeRESPONSEHEADER,
  DocumentationPartType'
  #-}

instance Prelude.FromText DocumentationPartType where
  parser = DocumentationPartType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DocumentationPartType where
  toText (DocumentationPartType' x) = x

instance Prelude.Hashable DocumentationPartType

instance Prelude.NFData DocumentationPartType

instance Prelude.ToByteString DocumentationPartType

instance Prelude.ToQuery DocumentationPartType

instance Prelude.ToHeader DocumentationPartType

instance Prelude.ToJSON DocumentationPartType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DocumentationPartType where
  parseJSON = Prelude.parseJSONText "DocumentationPartType"

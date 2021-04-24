{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.Qualifier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.Qualifier where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Defines a @PolicyInformation@ qualifier. ACM Private CA supports the <https://tools.ietf.org/html/rfc5280#section-4.2.1.4 certification practice statement (CPS) qualifier> defined in RFC 5280.
--
--
--
-- /See:/ 'qualifier' smart constructor.
newtype Qualifier = Qualifier' {_qCpsURI :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Qualifier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qCpsURI' - Contains a pointer to a certification practice statement (CPS) published by the CA.
qualifier ::
  -- | 'qCpsURI'
  Text ->
  Qualifier
qualifier pCpsURI_ = Qualifier' {_qCpsURI = pCpsURI_}

-- | Contains a pointer to a certification practice statement (CPS) published by the CA.
qCpsURI :: Lens' Qualifier Text
qCpsURI = lens _qCpsURI (\s a -> s {_qCpsURI = a})

instance Hashable Qualifier

instance NFData Qualifier

instance ToJSON Qualifier where
  toJSON Qualifier' {..} =
    object (catMaybes [Just ("CpsUri" .= _qCpsURI)])

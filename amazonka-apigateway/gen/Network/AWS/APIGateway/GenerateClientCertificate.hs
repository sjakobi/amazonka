{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.GenerateClientCertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a 'ClientCertificate' resource.
module Network.AWS.APIGateway.GenerateClientCertificate
  ( -- * Creating a Request
    generateClientCertificate,
    GenerateClientCertificate,

    -- * Request Lenses
    gccTags,
    gccDescription,

    -- * Destructuring the Response
    clientCertificate,
    ClientCertificate,

    -- * Response Lenses
    ccCreatedDate,
    ccExpirationDate,
    ccPemEncodedCertificate,
    ccTags,
    ccClientCertificateId,
    ccDescription,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | A request to generate a 'ClientCertificate' resource.
--
--
--
-- /See:/ 'generateClientCertificate' smart constructor.
data GenerateClientCertificate = GenerateClientCertificate'
  { _gccTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _gccDescription ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GenerateClientCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gccTags' - The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with @aws:@ . The tag value can be up to 256 characters.
--
-- * 'gccDescription' - The description of the 'ClientCertificate' .
generateClientCertificate ::
  GenerateClientCertificate
generateClientCertificate =
  GenerateClientCertificate'
    { _gccTags = Nothing,
      _gccDescription = Nothing
    }

-- | The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with @aws:@ . The tag value can be up to 256 characters.
gccTags :: Lens' GenerateClientCertificate (HashMap Text Text)
gccTags = lens _gccTags (\s a -> s {_gccTags = a}) . _Default . _Map

-- | The description of the 'ClientCertificate' .
gccDescription :: Lens' GenerateClientCertificate (Maybe Text)
gccDescription = lens _gccDescription (\s a -> s {_gccDescription = a})

instance AWSRequest GenerateClientCertificate where
  type Rs GenerateClientCertificate = ClientCertificate
  request = postJSON apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable GenerateClientCertificate

instance NFData GenerateClientCertificate

instance ToHeaders GenerateClientCertificate where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToJSON GenerateClientCertificate where
  toJSON GenerateClientCertificate' {..} =
    object
      ( catMaybes
          [ ("tags" .=) <$> _gccTags,
            ("description" .=) <$> _gccDescription
          ]
      )

instance ToPath GenerateClientCertificate where
  toPath = const "/clientcertificates"

instance ToQuery GenerateClientCertificate where
  toQuery = const mempty

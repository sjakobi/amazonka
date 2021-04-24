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
-- Module      : Network.AWS.CloudSearch.DefineAnalysisScheme
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Configures an analysis scheme that can be applied to a @text@ or @text-array@ field to define language-specific text processing options. For more information, see <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html Configuring Analysis Schemes> in the /Amazon CloudSearch Developer Guide/ .
module Network.AWS.CloudSearch.DefineAnalysisScheme
  ( -- * Creating a Request
    defineAnalysisScheme,
    DefineAnalysisScheme,

    -- * Request Lenses
    defeDomainName,
    defeAnalysisScheme,

    -- * Destructuring the Response
    defineAnalysisSchemeResponse,
    DefineAnalysisSchemeResponse,

    -- * Response Lenses
    defrsResponseStatus,
    defrsAnalysisScheme,
  )
where

import Network.AWS.CloudSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the @'DefineAnalysisScheme' @ operation. Specifies the name of the domain you want to update and the analysis scheme configuration.
--
--
--
-- /See:/ 'defineAnalysisScheme' smart constructor.
data DefineAnalysisScheme = DefineAnalysisScheme'
  { _defeDomainName ::
      !Text,
    _defeAnalysisScheme ::
      !AnalysisScheme
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DefineAnalysisScheme' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'defeDomainName' - Undocumented member.
--
-- * 'defeAnalysisScheme' - Undocumented member.
defineAnalysisScheme ::
  -- | 'defeDomainName'
  Text ->
  -- | 'defeAnalysisScheme'
  AnalysisScheme ->
  DefineAnalysisScheme
defineAnalysisScheme pDomainName_ pAnalysisScheme_ =
  DefineAnalysisScheme'
    { _defeDomainName =
        pDomainName_,
      _defeAnalysisScheme = pAnalysisScheme_
    }

-- | Undocumented member.
defeDomainName :: Lens' DefineAnalysisScheme Text
defeDomainName = lens _defeDomainName (\s a -> s {_defeDomainName = a})

-- | Undocumented member.
defeAnalysisScheme :: Lens' DefineAnalysisScheme AnalysisScheme
defeAnalysisScheme = lens _defeAnalysisScheme (\s a -> s {_defeAnalysisScheme = a})

instance AWSRequest DefineAnalysisScheme where
  type
    Rs DefineAnalysisScheme =
      DefineAnalysisSchemeResponse
  request = postQuery cloudSearch
  response =
    receiveXMLWrapper
      "DefineAnalysisSchemeResult"
      ( \s h x ->
          DefineAnalysisSchemeResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "AnalysisScheme")
      )

instance Hashable DefineAnalysisScheme

instance NFData DefineAnalysisScheme

instance ToHeaders DefineAnalysisScheme where
  toHeaders = const mempty

instance ToPath DefineAnalysisScheme where
  toPath = const "/"

instance ToQuery DefineAnalysisScheme where
  toQuery DefineAnalysisScheme' {..} =
    mconcat
      [ "Action" =: ("DefineAnalysisScheme" :: ByteString),
        "Version" =: ("2013-01-01" :: ByteString),
        "DomainName" =: _defeDomainName,
        "AnalysisScheme" =: _defeAnalysisScheme
      ]

-- | The result of a @'DefineAnalysisScheme' @ request. Contains the status of the newly-configured analysis scheme.
--
--
--
-- /See:/ 'defineAnalysisSchemeResponse' smart constructor.
data DefineAnalysisSchemeResponse = DefineAnalysisSchemeResponse'
  { _defrsResponseStatus ::
      !Int,
    _defrsAnalysisScheme ::
      !AnalysisSchemeStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DefineAnalysisSchemeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'defrsResponseStatus' - -- | The response status code.
--
-- * 'defrsAnalysisScheme' - Undocumented member.
defineAnalysisSchemeResponse ::
  -- | 'defrsResponseStatus'
  Int ->
  -- | 'defrsAnalysisScheme'
  AnalysisSchemeStatus ->
  DefineAnalysisSchemeResponse
defineAnalysisSchemeResponse
  pResponseStatus_
  pAnalysisScheme_ =
    DefineAnalysisSchemeResponse'
      { _defrsResponseStatus =
          pResponseStatus_,
        _defrsAnalysisScheme = pAnalysisScheme_
      }

-- | -- | The response status code.
defrsResponseStatus :: Lens' DefineAnalysisSchemeResponse Int
defrsResponseStatus = lens _defrsResponseStatus (\s a -> s {_defrsResponseStatus = a})

-- | Undocumented member.
defrsAnalysisScheme :: Lens' DefineAnalysisSchemeResponse AnalysisSchemeStatus
defrsAnalysisScheme = lens _defrsAnalysisScheme (\s a -> s {_defrsAnalysisScheme = a})

instance NFData DefineAnalysisSchemeResponse

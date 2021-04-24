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
-- Module      : Network.AWS.CloudSearch.DescribeAnalysisSchemes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the analysis schemes configured for a domain. An analysis scheme defines language-specific text processing options for a @text@ field. Can be limited to specific analysis schemes by name. By default, shows all analysis schemes and includes any pending changes to the configuration. Set the @Deployed@ option to @true@ to show the active configuration and exclude pending changes. For more information, see <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html Configuring Analysis Schemes> in the /Amazon CloudSearch Developer Guide/ .
module Network.AWS.CloudSearch.DescribeAnalysisSchemes
  ( -- * Creating a Request
    describeAnalysisSchemes,
    DescribeAnalysisSchemes,

    -- * Request Lenses
    dasDeployed,
    dasAnalysisSchemeNames,
    dasDomainName,

    -- * Destructuring the Response
    describeAnalysisSchemesResponse,
    DescribeAnalysisSchemesResponse,

    -- * Response Lenses
    dasrarsResponseStatus,
    dasrarsAnalysisSchemes,
  )
where

import Network.AWS.CloudSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the @'DescribeAnalysisSchemes' @ operation. Specifies the name of the domain you want to describe. To limit the response to particular analysis schemes, specify the names of the analysis schemes you want to describe. To show the active configuration and exclude any pending changes, set the @Deployed@ option to @true@ .
--
--
--
-- /See:/ 'describeAnalysisSchemes' smart constructor.
data DescribeAnalysisSchemes = DescribeAnalysisSchemes'
  { _dasDeployed ::
      !(Maybe Bool),
    _dasAnalysisSchemeNames ::
      !(Maybe [Text]),
    _dasDomainName :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAnalysisSchemes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dasDeployed' - Whether to display the deployed configuration (@true@ ) or include any pending changes (@false@ ). Defaults to @false@ .
--
-- * 'dasAnalysisSchemeNames' - The analysis schemes you want to describe.
--
-- * 'dasDomainName' - The name of the domain you want to describe.
describeAnalysisSchemes ::
  -- | 'dasDomainName'
  Text ->
  DescribeAnalysisSchemes
describeAnalysisSchemes pDomainName_ =
  DescribeAnalysisSchemes'
    { _dasDeployed = Nothing,
      _dasAnalysisSchemeNames = Nothing,
      _dasDomainName = pDomainName_
    }

-- | Whether to display the deployed configuration (@true@ ) or include any pending changes (@false@ ). Defaults to @false@ .
dasDeployed :: Lens' DescribeAnalysisSchemes (Maybe Bool)
dasDeployed = lens _dasDeployed (\s a -> s {_dasDeployed = a})

-- | The analysis schemes you want to describe.
dasAnalysisSchemeNames :: Lens' DescribeAnalysisSchemes [Text]
dasAnalysisSchemeNames = lens _dasAnalysisSchemeNames (\s a -> s {_dasAnalysisSchemeNames = a}) . _Default . _Coerce

-- | The name of the domain you want to describe.
dasDomainName :: Lens' DescribeAnalysisSchemes Text
dasDomainName = lens _dasDomainName (\s a -> s {_dasDomainName = a})

instance AWSRequest DescribeAnalysisSchemes where
  type
    Rs DescribeAnalysisSchemes =
      DescribeAnalysisSchemesResponse
  request = postQuery cloudSearch
  response =
    receiveXMLWrapper
      "DescribeAnalysisSchemesResult"
      ( \s h x ->
          DescribeAnalysisSchemesResponse'
            <$> (pure (fromEnum s))
            <*> ( x .@? "AnalysisSchemes" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable DescribeAnalysisSchemes

instance NFData DescribeAnalysisSchemes

instance ToHeaders DescribeAnalysisSchemes where
  toHeaders = const mempty

instance ToPath DescribeAnalysisSchemes where
  toPath = const "/"

instance ToQuery DescribeAnalysisSchemes where
  toQuery DescribeAnalysisSchemes' {..} =
    mconcat
      [ "Action"
          =: ("DescribeAnalysisSchemes" :: ByteString),
        "Version" =: ("2013-01-01" :: ByteString),
        "Deployed" =: _dasDeployed,
        "AnalysisSchemeNames"
          =: toQuery
            (toQueryList "member" <$> _dasAnalysisSchemeNames),
        "DomainName" =: _dasDomainName
      ]

-- | The result of a @DescribeAnalysisSchemes@ request. Contains the analysis schemes configured for the domain specified in the request.
--
--
--
-- /See:/ 'describeAnalysisSchemesResponse' smart constructor.
data DescribeAnalysisSchemesResponse = DescribeAnalysisSchemesResponse'
  { _dasrarsResponseStatus ::
      !Int,
    _dasrarsAnalysisSchemes ::
      ![AnalysisSchemeStatus]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAnalysisSchemesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dasrarsResponseStatus' - -- | The response status code.
--
-- * 'dasrarsAnalysisSchemes' - The analysis scheme descriptions.
describeAnalysisSchemesResponse ::
  -- | 'dasrarsResponseStatus'
  Int ->
  DescribeAnalysisSchemesResponse
describeAnalysisSchemesResponse pResponseStatus_ =
  DescribeAnalysisSchemesResponse'
    { _dasrarsResponseStatus =
        pResponseStatus_,
      _dasrarsAnalysisSchemes = mempty
    }

-- | -- | The response status code.
dasrarsResponseStatus :: Lens' DescribeAnalysisSchemesResponse Int
dasrarsResponseStatus = lens _dasrarsResponseStatus (\s a -> s {_dasrarsResponseStatus = a})

-- | The analysis scheme descriptions.
dasrarsAnalysisSchemes :: Lens' DescribeAnalysisSchemesResponse [AnalysisSchemeStatus]
dasrarsAnalysisSchemes = lens _dasrarsAnalysisSchemes (\s a -> s {_dasrarsAnalysisSchemes = a}) . _Coerce

instance NFData DescribeAnalysisSchemesResponse

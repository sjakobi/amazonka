{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.NetworkInsightsAnalysis
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.NetworkInsightsAnalysis where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.AlternatePathHint
import Network.AWS.EC2.Types.AnalysisStatus
import Network.AWS.EC2.Types.Explanation
import Network.AWS.EC2.Types.PathComponent
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a network insights analysis.
--
--
--
-- /See:/ 'networkInsightsAnalysis' smart constructor.
data NetworkInsightsAnalysis = NetworkInsightsAnalysis'
  { _nStatusMessage ::
      !(Maybe Text),
    _nStatus ::
      !(Maybe AnalysisStatus),
    _nNetworkInsightsAnalysisId ::
      !(Maybe Text),
    _nStartDate ::
      !(Maybe ISO8601),
    _nFilterInARNs ::
      !(Maybe [Text]),
    _nReturnPathComponents ::
      !( Maybe
           [PathComponent]
       ),
    _nExplanations ::
      !(Maybe [Explanation]),
    _nNetworkPathFound ::
      !(Maybe Bool),
    _nNetworkInsightsAnalysisARN ::
      !(Maybe Text),
    _nTags ::
      !(Maybe [Tag]),
    _nNetworkInsightsPathId ::
      !(Maybe Text),
    _nAlternatePathHints ::
      !( Maybe
           [AlternatePathHint]
       ),
    _nForwardPathComponents ::
      !( Maybe
           [PathComponent]
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'NetworkInsightsAnalysis' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nStatusMessage' - The status message, if the status is @failed@ .
--
-- * 'nStatus' - The status of the network insights analysis.
--
-- * 'nNetworkInsightsAnalysisId' - The ID of the network insights analysis.
--
-- * 'nStartDate' - The time the analysis started.
--
-- * 'nFilterInARNs' - The Amazon Resource Names (ARN) of the AWS resources that the path must traverse.
--
-- * 'nReturnPathComponents' - The components in the path from destination to source.
--
-- * 'nExplanations' - The explanations. For more information, see <https://docs.aws.amazon.com/vpc/latest/reachability/explanation-codes.html Reachability Analyzer explanation codes> .
--
-- * 'nNetworkPathFound' - Indicates whether the destination is reachable from the source.
--
-- * 'nNetworkInsightsAnalysisARN' - The Amazon Resource Name (ARN) of the network insights analysis.
--
-- * 'nTags' - The tags.
--
-- * 'nNetworkInsightsPathId' - The ID of the path.
--
-- * 'nAlternatePathHints' - Potential intermediate components.
--
-- * 'nForwardPathComponents' - The components in the path from source to destination.
networkInsightsAnalysis ::
  NetworkInsightsAnalysis
networkInsightsAnalysis =
  NetworkInsightsAnalysis'
    { _nStatusMessage = Nothing,
      _nStatus = Nothing,
      _nNetworkInsightsAnalysisId = Nothing,
      _nStartDate = Nothing,
      _nFilterInARNs = Nothing,
      _nReturnPathComponents = Nothing,
      _nExplanations = Nothing,
      _nNetworkPathFound = Nothing,
      _nNetworkInsightsAnalysisARN = Nothing,
      _nTags = Nothing,
      _nNetworkInsightsPathId = Nothing,
      _nAlternatePathHints = Nothing,
      _nForwardPathComponents = Nothing
    }

-- | The status message, if the status is @failed@ .
nStatusMessage :: Lens' NetworkInsightsAnalysis (Maybe Text)
nStatusMessage = lens _nStatusMessage (\s a -> s {_nStatusMessage = a})

-- | The status of the network insights analysis.
nStatus :: Lens' NetworkInsightsAnalysis (Maybe AnalysisStatus)
nStatus = lens _nStatus (\s a -> s {_nStatus = a})

-- | The ID of the network insights analysis.
nNetworkInsightsAnalysisId :: Lens' NetworkInsightsAnalysis (Maybe Text)
nNetworkInsightsAnalysisId = lens _nNetworkInsightsAnalysisId (\s a -> s {_nNetworkInsightsAnalysisId = a})

-- | The time the analysis started.
nStartDate :: Lens' NetworkInsightsAnalysis (Maybe UTCTime)
nStartDate = lens _nStartDate (\s a -> s {_nStartDate = a}) . mapping _Time

-- | The Amazon Resource Names (ARN) of the AWS resources that the path must traverse.
nFilterInARNs :: Lens' NetworkInsightsAnalysis [Text]
nFilterInARNs = lens _nFilterInARNs (\s a -> s {_nFilterInARNs = a}) . _Default . _Coerce

-- | The components in the path from destination to source.
nReturnPathComponents :: Lens' NetworkInsightsAnalysis [PathComponent]
nReturnPathComponents = lens _nReturnPathComponents (\s a -> s {_nReturnPathComponents = a}) . _Default . _Coerce

-- | The explanations. For more information, see <https://docs.aws.amazon.com/vpc/latest/reachability/explanation-codes.html Reachability Analyzer explanation codes> .
nExplanations :: Lens' NetworkInsightsAnalysis [Explanation]
nExplanations = lens _nExplanations (\s a -> s {_nExplanations = a}) . _Default . _Coerce

-- | Indicates whether the destination is reachable from the source.
nNetworkPathFound :: Lens' NetworkInsightsAnalysis (Maybe Bool)
nNetworkPathFound = lens _nNetworkPathFound (\s a -> s {_nNetworkPathFound = a})

-- | The Amazon Resource Name (ARN) of the network insights analysis.
nNetworkInsightsAnalysisARN :: Lens' NetworkInsightsAnalysis (Maybe Text)
nNetworkInsightsAnalysisARN = lens _nNetworkInsightsAnalysisARN (\s a -> s {_nNetworkInsightsAnalysisARN = a})

-- | The tags.
nTags :: Lens' NetworkInsightsAnalysis [Tag]
nTags = lens _nTags (\s a -> s {_nTags = a}) . _Default . _Coerce

-- | The ID of the path.
nNetworkInsightsPathId :: Lens' NetworkInsightsAnalysis (Maybe Text)
nNetworkInsightsPathId = lens _nNetworkInsightsPathId (\s a -> s {_nNetworkInsightsPathId = a})

-- | Potential intermediate components.
nAlternatePathHints :: Lens' NetworkInsightsAnalysis [AlternatePathHint]
nAlternatePathHints = lens _nAlternatePathHints (\s a -> s {_nAlternatePathHints = a}) . _Default . _Coerce

-- | The components in the path from source to destination.
nForwardPathComponents :: Lens' NetworkInsightsAnalysis [PathComponent]
nForwardPathComponents = lens _nForwardPathComponents (\s a -> s {_nForwardPathComponents = a}) . _Default . _Coerce

instance FromXML NetworkInsightsAnalysis where
  parseXML x =
    NetworkInsightsAnalysis'
      <$> (x .@? "statusMessage")
      <*> (x .@? "status")
      <*> (x .@? "networkInsightsAnalysisId")
      <*> (x .@? "startDate")
      <*> ( x .@? "filterInArnSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "returnPathComponentSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "explanationSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "networkPathFound")
      <*> (x .@? "networkInsightsAnalysisArn")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "networkInsightsPathId")
      <*> ( x .@? "alternatePathHintSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "forwardPathComponentSet" .!@ mempty
              >>= may (parseXMLList "item")
          )

instance Hashable NetworkInsightsAnalysis

instance NFData NetworkInsightsAnalysis

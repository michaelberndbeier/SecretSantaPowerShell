$participants = "Michael", "Alice", "Bob", "Charlie", "Dennis"


function Get-ReceiverIndex{
    param($numParticipants, $senderIndex, $offset)
    $virtualIndex = ($senderIndex + $offset)
    $adjustedIndex = $virtualIndex % $numParticipants
    $adjustedIndex
}

function Get-Offset{
    param($numParticipants)
    Get-Random -Maximum $numParticipants.Count -Minimum 1
}
$participants.Count

Get-ReceiverIndex(5,1,2)
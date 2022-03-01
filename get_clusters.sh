for r in us-east-1 us-east-2; do 
	aws eks list-clusters --region $r | jq -r '.clusters[]' | xargs -I{} aws eks update-kubeconfig --region $r --name {} --alias {}; 
done

